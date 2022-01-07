
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_bearer {int identity; int name; } ;
struct net {int dummy; } ;


 int pr_info (char*,int ) ;
 int tipc_disc_reset (struct net*,struct tipc_bearer*) ;
 int tipc_node_delete_links (struct net*,int ) ;

__attribute__((used)) static int tipc_reset_bearer(struct net *net, struct tipc_bearer *b)
{
 pr_info("Resetting bearer <%s>\n", b->name);
 tipc_node_delete_links(net, b->identity);
 tipc_disc_reset(net, b);
 return 0;
}
