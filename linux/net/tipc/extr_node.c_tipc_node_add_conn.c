
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct tipc_sock_conn {int list; void* peer_port; void* port; void* peer_node; } ;
struct tipc_node {int conn_sks; } ;
struct net {int dummy; } ;


 int EHOSTUNREACH ;
 int GFP_ATOMIC ;
 scalar_t__ in_own_node (struct net*,void*) ;
 struct tipc_sock_conn* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int pr_warn (char*,void*) ;
 struct tipc_node* tipc_node_find (struct net*,void*) ;
 int tipc_node_put (struct tipc_node*) ;
 int tipc_node_write_lock (struct tipc_node*) ;
 int tipc_node_write_unlock (struct tipc_node*) ;

int tipc_node_add_conn(struct net *net, u32 dnode, u32 port, u32 peer_port)
{
 struct tipc_node *node;
 struct tipc_sock_conn *conn;
 int err = 0;

 if (in_own_node(net, dnode))
  return 0;

 node = tipc_node_find(net, dnode);
 if (!node) {
  pr_warn("Connecting sock to node 0x%x failed\n", dnode);
  return -EHOSTUNREACH;
 }
 conn = kmalloc(sizeof(*conn), GFP_ATOMIC);
 if (!conn) {
  err = -EHOSTUNREACH;
  goto exit;
 }
 conn->peer_node = dnode;
 conn->port = port;
 conn->peer_port = peer_port;

 tipc_node_write_lock(node);
 list_add_tail(&conn->list, &node->conn_sks);
 tipc_node_write_unlock(node);
exit:
 tipc_node_put(node);
 return err;
}
