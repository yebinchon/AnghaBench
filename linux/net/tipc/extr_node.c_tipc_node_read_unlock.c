
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_node {int lock; } ;


 int read_unlock_bh (int *) ;

__attribute__((used)) static void tipc_node_read_unlock(struct tipc_node *n)
{
 read_unlock_bh(&n->lock);
}
