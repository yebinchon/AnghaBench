
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tcf_proto {int lock; } ;
struct tcf_block {int cb_lock; } ;


 int lockdep_assert_held (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tcf_block_offload_dec (struct tcf_block*,scalar_t__*) ;
 int tcf_block_offload_inc (struct tcf_block*,scalar_t__*) ;

__attribute__((used)) static void tc_cls_offload_cnt_update(struct tcf_block *block,
          struct tcf_proto *tp, u32 *cnt,
          u32 *flags, u32 diff, bool add)
{
 lockdep_assert_held(&block->cb_lock);

 spin_lock(&tp->lock);
 if (add) {
  if (!*cnt)
   tcf_block_offload_inc(block, flags);
  *cnt += diff;
 } else {
  *cnt -= diff;
  if (!*cnt)
   tcf_block_offload_dec(block, flags);
 }
 spin_unlock(&tp->lock);
}
