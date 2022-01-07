
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_block_ext_info {int member_0; } ;
struct tcf_block {int q; } ;


 int tcf_block_put_ext (struct tcf_block*,int ,struct tcf_block_ext_info*) ;

void tcf_block_put(struct tcf_block *block)
{
 struct tcf_block_ext_info ei = {0, };

 if (!block)
  return;
 tcf_block_put_ext(block, block->q, &ei);
}
