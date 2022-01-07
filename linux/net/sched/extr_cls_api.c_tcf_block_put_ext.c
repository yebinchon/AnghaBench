
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_block_ext_info {int binder_type; } ;
struct tcf_block {int dummy; } ;
struct Qdisc {int dummy; } ;


 int __tcf_block_put (struct tcf_block*,struct Qdisc*,struct tcf_block_ext_info*,int) ;
 int tcf_block_owner_del (struct tcf_block*,struct Qdisc*,int ) ;
 int tcf_chain0_head_change_cb_del (struct tcf_block*,struct tcf_block_ext_info*) ;

void tcf_block_put_ext(struct tcf_block *block, struct Qdisc *q,
         struct tcf_block_ext_info *ei)
{
 if (!block)
  return;
 tcf_chain0_head_change_cb_del(block, ei);
 tcf_block_owner_del(block, q, ei->binder_type);

 __tcf_block_put(block, q, ei, 1);
}
