
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct TYPE_4__ {int lock; } ;
struct tipc_bclink_entry {TYPE_1__ inputq2; int arrvq; TYPE_2__ inputq1; } ;
struct tipc_node {int net; struct tipc_bclink_entry bc_entry; } ;


 int skb_queue_splice_tail_init (TYPE_2__*,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tipc_sk_mcast_rcv (int ,int *,TYPE_1__*) ;

__attribute__((used)) static void tipc_node_mcast_rcv(struct tipc_node *n)
{
 struct tipc_bclink_entry *be = &n->bc_entry;


 spin_lock_bh(&be->inputq2.lock);
 spin_lock_bh(&be->inputq1.lock);
 skb_queue_splice_tail_init(&be->inputq1, &be->arrvq);
 spin_unlock_bh(&be->inputq1.lock);
 spin_unlock_bh(&be->inputq2.lock);
 tipc_sk_mcast_rcv(n->net, &be->arrvq, &be->inputq2);
}
