
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct super_block {int dummy; } ;
struct TYPE_13__ {int preallocate; int prealloc_size; TYPE_3__* inode; int formatted_node; TYPE_2__* th; scalar_t__ beg; scalar_t__ search_start; } ;
typedef TYPE_1__ reiserfs_blocknr_hint_t ;
typedef scalar_t__ b_blocknr_t ;
struct TYPE_15__ {int i_uid; } ;
struct TYPE_14__ {struct super_block* t_super; } ;
struct TYPE_12__ {int i_prealloc_count; } ;


 int CARRY_ON ;
 int NO_DISK_SPACE ;
 int QUOTA_EXCEEDED ;
 int REISERFS_DEBUG_CODE ;
 TYPE_10__* REISERFS_I (TYPE_3__*) ;
 scalar_t__ SB_BLOCK_COUNT (struct super_block*) ;
 int allocate_without_wrapping_disk (TYPE_1__*,scalar_t__*,scalar_t__,scalar_t__,int,int,int) ;
 int determine_prealloc_size (TYPE_1__*) ;
 int dquot_alloc_block_nodirty (TYPE_3__*,int) ;
 int dquot_free_block_nodirty (TYPE_3__*,int) ;
 int dquot_prealloc_block_nodirty (TYPE_3__*,int) ;
 int reiserfs_debug (struct super_block*,int ,char*,int,int ) ;
 int reiserfs_free_block (TYPE_2__*,TYPE_3__*,scalar_t__,int) ;
 int reiserfs_write_lock_nested (struct super_block*,int) ;
 int reiserfs_write_unlock_nested (struct super_block*) ;

__attribute__((used)) static inline int blocknrs_and_prealloc_arrays_from_search_start
    (reiserfs_blocknr_hint_t * hint, b_blocknr_t * new_blocknrs,
     int amount_needed) {
 struct super_block *s = hint->th->t_super;
 b_blocknr_t start = hint->search_start;
 b_blocknr_t finish = SB_BLOCK_COUNT(s) - 1;
 int passno = 0;
 int nr_allocated = 0;
 int depth;

 determine_prealloc_size(hint);
 if (!hint->formatted_node) {
  int quota_ret;





  depth = reiserfs_write_unlock_nested(s);
  quota_ret =
      dquot_alloc_block_nodirty(hint->inode, amount_needed);
  if (quota_ret) {
   reiserfs_write_lock_nested(s, depth);
   return QUOTA_EXCEEDED;
  }
  if (hint->preallocate && hint->prealloc_size) {





   quota_ret = dquot_prealloc_block_nodirty(hint->inode,
        hint->prealloc_size);
   if (quota_ret)
    hint->preallocate = hint->prealloc_size = 0;
  }

  reiserfs_write_lock_nested(s, depth);
 }

 do {
  switch (passno++) {
  case 0:
   start = hint->search_start;
   finish = SB_BLOCK_COUNT(s) - 1;
   break;
  case 1:
   start = hint->beg;
   finish = hint->search_start;
   break;
  case 2:
   start = 0;
   finish = hint->beg;
   break;
  default:


   if (!hint->formatted_node) {
    depth = reiserfs_write_unlock_nested(s);
    dquot_free_block_nodirty(hint->inode,
     amount_needed + hint->prealloc_size -
     nr_allocated);
    reiserfs_write_lock_nested(s, depth);
   }
   while (nr_allocated--)
    reiserfs_free_block(hint->th, hint->inode,
          new_blocknrs[nr_allocated],
          !hint->formatted_node);

   return NO_DISK_SPACE;
  }
 } while ((nr_allocated += allocate_without_wrapping_disk(hint,
         new_blocknrs +
         nr_allocated,
         start, finish,
         1,
         amount_needed -
         nr_allocated,
         hint->
         prealloc_size))
   < amount_needed);
 if (!hint->formatted_node &&
     amount_needed + hint->prealloc_size >
     nr_allocated + REISERFS_I(hint->inode)->i_prealloc_count) {
  depth = reiserfs_write_unlock_nested(s);
  dquot_free_block_nodirty(hint->inode, amount_needed +
      hint->prealloc_size - nr_allocated -
      REISERFS_I(hint->inode)->
      i_prealloc_count);
  reiserfs_write_lock_nested(s, depth);
 }

 return CARRY_ON;
}
