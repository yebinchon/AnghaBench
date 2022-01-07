
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;
struct tcf_chain_info {int * pprev; } ;
struct tcf_chain {int dummy; } ;


 struct tcf_proto* tcf_chain_dereference (int ,struct tcf_chain*) ;

__attribute__((used)) static struct tcf_proto *tcf_chain_tp_prev(struct tcf_chain *chain,
        struct tcf_chain_info *chain_info)
{
 return tcf_chain_dereference(*chain_info->pprev, chain);
}
