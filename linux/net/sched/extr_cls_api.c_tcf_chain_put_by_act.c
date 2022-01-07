
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_chain {int dummy; } ;


 int __tcf_chain_put (struct tcf_chain*,int,int) ;

void tcf_chain_put_by_act(struct tcf_chain *chain)
{
 __tcf_chain_put(chain, 1, 0);
}
