
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_node {int link_cnt; struct tipc_link_entry* links; } ;
struct tipc_link_entry {int * link; } ;


 int MAX_BEARERS ;
 int kfree (int *) ;

__attribute__((used)) static void tipc_node_clear_links(struct tipc_node *node)
{
 int i;

 for (i = 0; i < MAX_BEARERS; i++) {
  struct tipc_link_entry *le = &node->links[i];

  if (le->link) {
   kfree(le->link);
   le->link = ((void*)0);
   node->link_cnt--;
  }
 }
}
