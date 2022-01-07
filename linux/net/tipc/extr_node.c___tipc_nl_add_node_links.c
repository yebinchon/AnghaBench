
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct tipc_node {TYPE_1__* links; } ;
struct tipc_nl_msg {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int link; } ;


 size_t MAX_BEARERS ;
 int NLM_F_MULTI ;
 int __tipc_nl_add_link (struct net*,struct tipc_nl_msg*,int ,int ) ;

__attribute__((used)) static int __tipc_nl_add_node_links(struct net *net, struct tipc_nl_msg *msg,
        struct tipc_node *node, u32 *prev_link)
{
 u32 i;
 int err;

 for (i = *prev_link; i < MAX_BEARERS; i++) {
  *prev_link = i;

  if (!node->links[i].link)
   continue;

  err = __tipc_nl_add_link(net, msg,
      node->links[i].link, NLM_F_MULTI);
  if (err)
   return err;
 }
 *prev_link = 0;

 return 0;
}
