
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct tipc_node {TYPE_1__* links; } ;
struct tipc_link {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {struct tipc_link* link; } ;


 int EINVAL ;
 size_t MAX_BEARERS ;
 int strncpy (char*,int ,size_t) ;
 int tipc_link_name (struct tipc_link*) ;
 struct tipc_node* tipc_node_find (struct net*,size_t) ;
 int tipc_node_put (struct tipc_node*) ;
 int tipc_node_read_lock (struct tipc_node*) ;
 int tipc_node_read_unlock (struct tipc_node*) ;

int tipc_node_get_linkname(struct net *net, u32 bearer_id, u32 addr,
      char *linkname, size_t len)
{
 struct tipc_link *link;
 int err = -EINVAL;
 struct tipc_node *node = tipc_node_find(net, addr);

 if (!node)
  return err;

 if (bearer_id >= MAX_BEARERS)
  goto exit;

 tipc_node_read_lock(node);
 link = node->links[bearer_id].link;
 if (link) {
  strncpy(linkname, tipc_link_name(link), len);
  err = 0;
 }
 tipc_node_read_unlock(node);
exit:
 tipc_node_put(node);
 return err;
}
