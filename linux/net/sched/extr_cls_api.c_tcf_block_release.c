
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_block {int dummy; } ;
struct Qdisc {int dummy; } ;


 int IS_ERR_OR_NULL (struct tcf_block*) ;
 int qdisc_put (struct Qdisc*) ;
 int qdisc_put_unlocked (struct Qdisc*) ;
 int tcf_block_refcnt_put (struct tcf_block*,int) ;

__attribute__((used)) static void tcf_block_release(struct Qdisc *q, struct tcf_block *block,
         bool rtnl_held)
{
 if (!IS_ERR_OR_NULL(block))
  tcf_block_refcnt_put(block, rtnl_held);

 if (q) {
  if (rtnl_held)
   qdisc_put(q);
  else
   qdisc_put_unlocked(q);
 }
}
