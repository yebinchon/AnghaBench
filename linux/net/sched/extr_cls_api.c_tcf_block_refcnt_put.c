
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_block {int dummy; } ;


 int __tcf_block_put (struct tcf_block*,int *,int *,int) ;

__attribute__((used)) static void tcf_block_refcnt_put(struct tcf_block *block, bool rtnl_held)
{
 __tcf_block_put(block, ((void*)0), ((void*)0), rtnl_held);
}
