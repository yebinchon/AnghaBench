
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_block {int offloadcnt; } ;


 int TCA_CLS_FLAGS_IN_HW ;
 int atomic_dec (int *) ;

__attribute__((used)) static void tcf_block_offload_dec(struct tcf_block *block, u32 *flags)
{
 if (!(*flags & TCA_CLS_FLAGS_IN_HW))
  return;
 *flags &= ~TCA_CLS_FLAGS_IN_HW;
 atomic_dec(&block->offloadcnt);
}
