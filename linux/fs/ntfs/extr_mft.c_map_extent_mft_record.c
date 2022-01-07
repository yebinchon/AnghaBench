
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_21__ {TYPE_3__** extent_ntfs_inos; TYPE_3__* base_ntfs_ino; } ;
struct TYPE_22__ {unsigned long mft_no; int nr_extents; int count; int extent_lock; TYPE_2__ ext; TYPE_1__* vol; scalar_t__ seq_no; } ;
typedef TYPE_3__ ntfs_inode ;
struct TYPE_23__ {int sequence_number; } ;
struct TYPE_20__ {int sb; } ;
typedef int MFT_REF ;
typedef TYPE_4__ MFT_RECORD ;


 int BUG_ON (int) ;
 int EIO ;
 int ENOMEM ;
 TYPE_4__* ERR_PTR (int ) ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (TYPE_4__*) ;
 unsigned long MREF (int ) ;
 scalar_t__ MSEQNO (int ) ;
 int PTR_ERR (TYPE_4__*) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int kfree (TYPE_3__**) ;
 TYPE_3__** kmalloc (int,int ) ;
 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ likely (int) ;
 TYPE_4__* map_mft_record (TYPE_3__*) ;
 int memcpy (TYPE_3__**,TYPE_3__**,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ntfs_clear_extent_inode (TYPE_3__*) ;
 int ntfs_debug (char*,...) ;
 int ntfs_error (int ,char*,...) ;
 TYPE_3__* ntfs_new_extent_inode (int ,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int unmap_mft_record (TYPE_3__*) ;

MFT_RECORD *map_extent_mft_record(ntfs_inode *base_ni, MFT_REF mref,
  ntfs_inode **ntfs_ino)
{
 MFT_RECORD *m;
 ntfs_inode *ni = ((void*)0);
 ntfs_inode **extent_nis = ((void*)0);
 int i;
 unsigned long mft_no = MREF(mref);
 u16 seq_no = MSEQNO(mref);
 bool destroy_ni = 0;

 ntfs_debug("Mapping extent mft record 0x%lx (base mft record 0x%lx).",
   mft_no, base_ni->mft_no);

 atomic_inc(&base_ni->count);





 mutex_lock(&base_ni->extent_lock);
 if (base_ni->nr_extents > 0) {
  extent_nis = base_ni->ext.extent_ntfs_inos;
  for (i = 0; i < base_ni->nr_extents; i++) {
   if (mft_no != extent_nis[i]->mft_no)
    continue;
   ni = extent_nis[i];

   atomic_inc(&ni->count);
   break;
  }
 }
 if (likely(ni != ((void*)0))) {
  mutex_unlock(&base_ni->extent_lock);
  atomic_dec(&base_ni->count);

  m = map_mft_record(ni);

  atomic_dec(&ni->count);
  if (!IS_ERR(m)) {

   if (likely(le16_to_cpu(m->sequence_number) == seq_no)) {
    ntfs_debug("Done 1.");
    *ntfs_ino = ni;
    return m;
   }
   unmap_mft_record(ni);
   ntfs_error(base_ni->vol->sb, "Found stale extent mft "
     "reference! Corrupt filesystem. "
     "Run chkdsk.");
   return ERR_PTR(-EIO);
  }
map_err_out:
  ntfs_error(base_ni->vol->sb, "Failed to map extent "
    "mft record, error code %ld.", -PTR_ERR(m));
  return m;
 }

 ni = ntfs_new_extent_inode(base_ni->vol->sb, mft_no);
 if (unlikely(!ni)) {
  mutex_unlock(&base_ni->extent_lock);
  atomic_dec(&base_ni->count);
  return ERR_PTR(-ENOMEM);
 }
 ni->vol = base_ni->vol;
 ni->seq_no = seq_no;
 ni->nr_extents = -1;
 ni->ext.base_ntfs_ino = base_ni;

 m = map_mft_record(ni);
 if (IS_ERR(m)) {
  mutex_unlock(&base_ni->extent_lock);
  atomic_dec(&base_ni->count);
  ntfs_clear_extent_inode(ni);
  goto map_err_out;
 }

 if (seq_no && (le16_to_cpu(m->sequence_number) != seq_no)) {
  ntfs_error(base_ni->vol->sb, "Found stale extent mft "
    "reference! Corrupt filesystem. Run chkdsk.");
  destroy_ni = 1;
  m = ERR_PTR(-EIO);
  goto unm_err_out;
 }

 if (!(base_ni->nr_extents & 3)) {
  ntfs_inode **tmp;
  int new_size = (base_ni->nr_extents + 4) * sizeof(ntfs_inode *);

  tmp = kmalloc(new_size, GFP_NOFS);
  if (unlikely(!tmp)) {
   ntfs_error(base_ni->vol->sb, "Failed to allocate "
     "internal buffer.");
   destroy_ni = 1;
   m = ERR_PTR(-ENOMEM);
   goto unm_err_out;
  }
  if (base_ni->nr_extents) {
   BUG_ON(!base_ni->ext.extent_ntfs_inos);
   memcpy(tmp, base_ni->ext.extent_ntfs_inos, new_size -
     4 * sizeof(ntfs_inode *));
   kfree(base_ni->ext.extent_ntfs_inos);
  }
  base_ni->ext.extent_ntfs_inos = tmp;
 }
 base_ni->ext.extent_ntfs_inos[base_ni->nr_extents++] = ni;
 mutex_unlock(&base_ni->extent_lock);
 atomic_dec(&base_ni->count);
 ntfs_debug("Done 2.");
 *ntfs_ino = ni;
 return m;
unm_err_out:
 unmap_mft_record(ni);
 mutex_unlock(&base_ni->extent_lock);
 atomic_dec(&base_ni->count);




 if (destroy_ni)
  ntfs_clear_extent_inode(ni);
 return m;
}
