
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;
struct tcf_filter_chain_list_item {int chain_head_change_priv; int (* chain_head_change ) (struct tcf_proto*,int ) ;} ;


 int stub1 (struct tcf_proto*,int ) ;

__attribute__((used)) static void tcf_chain_head_change_item(struct tcf_filter_chain_list_item *item,
           struct tcf_proto *tp_head)
{
 if (item->chain_head_change)
  item->chain_head_change(tp_head, item->chain_head_change_priv);
}
