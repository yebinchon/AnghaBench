
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_node {int addr; } ;


 int MAX_BEARERS ;
 int pr_warn (char*,int ) ;
 int tipc_node_link_down (struct tipc_node*,int,int) ;
 int trace_tipc_node_reset_links (struct tipc_node*,int,char*) ;

__attribute__((used)) static void tipc_node_reset_links(struct tipc_node *n)
{
 int i;

 pr_warn("Resetting all links to %x\n", n->addr);

 trace_tipc_node_reset_links(n, 1, " ");
 for (i = 0; i < MAX_BEARERS; i++) {
  tipc_node_link_down(n, i, 0);
 }
}
