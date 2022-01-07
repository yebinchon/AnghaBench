
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_node {int lock; } ;


 int write_lock_bh (int *) ;

__attribute__((used)) static void tipc_node_write_lock(struct tipc_node *n)
{
 write_lock_bh(&n->lock);
}
