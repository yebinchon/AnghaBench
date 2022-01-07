
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ocfs2_super {TYPE_2__* sb; int fs_generation; int slot_num; } ;
struct ocfs2_per_slot_free_list {int free_bit; int f_next_suballocator; struct ocfs2_per_slot_free_list* f_first; int free_bg; int free_blk; struct ocfs2_per_slot_free_list* free_next; } ;
struct ocfs2_extent_tree {int et_ci; struct ocfs2_cached_dealloc_ctxt* et_dealloc; } ;
struct TYPE_4__ {void* l_count; } ;
struct ocfs2_extent_block {TYPE_1__ h_list; void* h_suballoc_bit; void* h_suballoc_loc; void* h_suballoc_slot; int h_fs_generation; void* h_blkno; int h_signature; } ;
struct ocfs2_cached_dealloc_ctxt {int c_first_suballocator; } ;
struct ocfs2_cached_block_free {int free_bit; int f_next_suballocator; struct ocfs2_cached_block_free* f_first; int free_bg; int free_blk; struct ocfs2_cached_block_free* free_next; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_5__ {int s_blocksize; } ;


 int ENOMEM ;
 int EXTENT_ALLOC_SYSTEM_INODE ;
 int OCFS2_EXTENT_BLOCK_SIGNATURE ;
 int OCFS2_JOURNAL_ACCESS_CREATE ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int brelse (struct buffer_head*) ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 void* cpu_to_le64 (int ) ;
 int kfree (struct ocfs2_per_slot_free_list*) ;
 int memset (scalar_t__,int ,int ) ;
 int mlog (int ,char*,int ,int ,int) ;
 int mlog_errno (int) ;
 int ocfs2_extent_recs_per_eb (TYPE_2__*) ;
 struct ocfs2_per_slot_free_list* ocfs2_find_preferred_free_list (int ,int ,int*,struct ocfs2_cached_dealloc_ctxt*) ;
 int ocfs2_journal_access_eb (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_metadata_cache_get_super (int ) ;
 int ocfs2_set_new_buffer_uptodate (int ,struct buffer_head*) ;
 struct buffer_head* sb_getblk (TYPE_2__*,int ) ;
 int strcpy (int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ocfs2_reuse_blk_from_dealloc(handle_t *handle,
     struct ocfs2_extent_tree *et,
     struct buffer_head **new_eb_bh,
     int blk_wanted, int *blk_given)
{
 int i, status = 0, real_slot;
 struct ocfs2_cached_dealloc_ctxt *dealloc;
 struct ocfs2_per_slot_free_list *fl;
 struct ocfs2_cached_block_free *bf;
 struct ocfs2_extent_block *eb;
 struct ocfs2_super *osb =
  OCFS2_SB(ocfs2_metadata_cache_get_super(et->et_ci));

 *blk_given = 0;





 dealloc = et->et_dealloc;
 if (!dealloc)
  goto bail;

 for (i = 0; i < blk_wanted; i++) {

  fl = ocfs2_find_preferred_free_list(EXTENT_ALLOC_SYSTEM_INODE,
          osb->slot_num, &real_slot,
          dealloc);



  if (!fl) {
   status = 0;
   break;
  }

  bf = fl->f_first;
  fl->f_first = bf->free_next;

  new_eb_bh[i] = sb_getblk(osb->sb, bf->free_blk);
  if (new_eb_bh[i] == ((void*)0)) {
   status = -ENOMEM;
   mlog_errno(status);
   goto bail;
  }

  mlog(0, "Reusing block(%llu) from "
       "dealloc(local slot:%d, real slot:%d)\n",
       bf->free_blk, osb->slot_num, real_slot);

  ocfs2_set_new_buffer_uptodate(et->et_ci, new_eb_bh[i]);

  status = ocfs2_journal_access_eb(handle, et->et_ci,
       new_eb_bh[i],
       OCFS2_JOURNAL_ACCESS_CREATE);
  if (status < 0) {
   mlog_errno(status);
   goto bail;
  }

  memset(new_eb_bh[i]->b_data, 0, osb->sb->s_blocksize);
  eb = (struct ocfs2_extent_block *) new_eb_bh[i]->b_data;




  strcpy(eb->h_signature, OCFS2_EXTENT_BLOCK_SIGNATURE);
  eb->h_blkno = cpu_to_le64(bf->free_blk);
  eb->h_fs_generation = cpu_to_le32(osb->fs_generation);
  eb->h_suballoc_slot = cpu_to_le16(real_slot);
  eb->h_suballoc_loc = cpu_to_le64(bf->free_bg);
  eb->h_suballoc_bit = cpu_to_le16(bf->free_bit);
  eb->h_list.l_count =
   cpu_to_le16(ocfs2_extent_recs_per_eb(osb->sb));




  ocfs2_journal_dirty(handle, new_eb_bh[i]);

  if (!fl->f_first) {
   dealloc->c_first_suballocator = fl->f_next_suballocator;
   kfree(fl);
  }
  kfree(bf);
 }

 *blk_given = i;

bail:
 if (unlikely(status < 0)) {
  for (i = 0; i < blk_wanted; i++)
   brelse(new_eb_bh[i]);
 }

 return status;
}
