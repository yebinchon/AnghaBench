
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_peer_base {scalar_t__ total; int lock; int rb_root; } ;


 int RB_ROOT ;
 int seqlock_init (int *) ;

void inet_peer_base_init(struct inet_peer_base *bp)
{
 bp->rb_root = RB_ROOT;
 seqlock_init(&bp->lock);
 bp->total = 0;
}
