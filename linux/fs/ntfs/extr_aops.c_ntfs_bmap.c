
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct address_space {int host; } ;
typedef unsigned char sector_t ;
typedef unsigned char s64 ;
struct TYPE_13__ {unsigned char cluster_size_bits; unsigned char cluster_size_mask; TYPE_4__* sb; } ;
typedef TYPE_2__ ntfs_volume ;
struct TYPE_12__ {int lock; } ;
struct TYPE_14__ {long long mft_no; scalar_t__ type; unsigned char initialized_size; TYPE_1__ runlist; int size_lock; TYPE_2__* vol; } ;
typedef TYPE_3__ ntfs_inode ;
typedef unsigned char loff_t ;
typedef int lcn ;
typedef int block ;
struct TYPE_15__ {unsigned long s_blocksize; unsigned char s_blocksize_bits; } ;
typedef unsigned char LCN ;


 scalar_t__ AT_DATA ;
 int BUG_ON (int ) ;


 unsigned char LCN_HOLE ;
 int NInoCompressed (TYPE_3__*) ;
 scalar_t__ NInoEncrypted (TYPE_3__*) ;
 int NInoMstProtected (TYPE_3__*) ;
 int NInoNonResident (TYPE_3__*) ;
 TYPE_3__* NTFS_I (int ) ;
 int VFS_I (TYPE_3__*) ;
 int down_read (int *) ;
 unsigned char i_size_read (int ) ;
 unsigned char ntfs_attr_vcn_to_lcn_nolock (TYPE_3__*,unsigned char,int) ;
 int ntfs_debug (char*,...) ;
 int ntfs_error (TYPE_4__*,char*,...) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int up_read (int *) ;

__attribute__((used)) static sector_t ntfs_bmap(struct address_space *mapping, sector_t block)
{
 s64 ofs, size;
 loff_t i_size;
 LCN lcn;
 unsigned long blocksize, flags;
 ntfs_inode *ni = NTFS_I(mapping->host);
 ntfs_volume *vol = ni->vol;
 unsigned delta;
 unsigned char blocksize_bits, cluster_size_shift;

 ntfs_debug("Entering for mft_no 0x%lx, logical block 0x%llx.",
   ni->mft_no, (unsigned long long)block);
 if (ni->type != AT_DATA || !NInoNonResident(ni) || NInoEncrypted(ni)) {
  ntfs_error(vol->sb, "BMAP does not make sense for %s "
    "attributes, returning 0.",
    (ni->type != AT_DATA) ? "non-data" :
    (!NInoNonResident(ni) ? "resident" :
    "encrypted"));
  return 0;
 }

 BUG_ON(NInoCompressed(ni));
 BUG_ON(NInoMstProtected(ni));
 blocksize = vol->sb->s_blocksize;
 blocksize_bits = vol->sb->s_blocksize_bits;
 ofs = (s64)block << blocksize_bits;
 read_lock_irqsave(&ni->size_lock, flags);
 size = ni->initialized_size;
 i_size = i_size_read(VFS_I(ni));
 read_unlock_irqrestore(&ni->size_lock, flags);





 if (unlikely(ofs >= size || (ofs + blocksize > size && size < i_size)))
  goto hole;
 cluster_size_shift = vol->cluster_size_bits;
 down_read(&ni->runlist.lock);
 lcn = ntfs_attr_vcn_to_lcn_nolock(ni, ofs >> cluster_size_shift, 0);
 up_read(&ni->runlist.lock);
 if (unlikely(lcn < LCN_HOLE)) {
  switch ((int)lcn) {
  case 129:




   goto hole;
  case 128:
   ntfs_error(vol->sb, "Not enough memory to complete "
     "mapping for inode 0x%lx.  "
     "Returning 0.", ni->mft_no);
   break;
  default:
   ntfs_error(vol->sb, "Failed to complete mapping for "
     "inode 0x%lx.  Run chkdsk.  "
     "Returning 0.", ni->mft_no);
   break;
  }
  return 0;
 }
 if (lcn < 0) {

hole:
  ntfs_debug("Done (returning hole).");
  return 0;
 }




 delta = ofs & vol->cluster_size_mask;
 if (unlikely(sizeof(block) < sizeof(lcn))) {
  block = lcn = ((lcn << cluster_size_shift) + delta) >>
    blocksize_bits;

  if (unlikely(block != lcn)) {
   ntfs_error(vol->sb, "Physical block 0x%llx is too "
     "large to be returned, returning 0.",
     (long long)lcn);
   return 0;
  }
 } else
  block = ((lcn << cluster_size_shift) + delta) >>
    blocksize_bits;
 ntfs_debug("Done (returning block 0x%llx).", (unsigned long long)lcn);
 return block;
}
