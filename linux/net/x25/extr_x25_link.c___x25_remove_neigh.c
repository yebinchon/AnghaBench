
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ next; } ;
struct x25_neigh {TYPE_1__ node; int queue; } ;


 int list_del (TYPE_1__*) ;
 int skb_queue_purge (int *) ;
 int x25_neigh_put (struct x25_neigh*) ;
 int x25_stop_t20timer (struct x25_neigh*) ;

__attribute__((used)) static void __x25_remove_neigh(struct x25_neigh *nb)
{
 skb_queue_purge(&nb->queue);
 x25_stop_t20timer(nb);

 if (nb->node.next) {
  list_del(&nb->node);
  x25_neigh_put(nb);
 }
}
