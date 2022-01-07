
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_forw_packet {int cleanup_list; int list; } ;
typedef int spinlock_t ;


 scalar_t__ batadv_forw_packet_was_stolen (struct batadv_forw_packet*) ;
 int hlist_add_fake (int *) ;
 int hlist_del_init (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

bool batadv_forw_packet_steal(struct batadv_forw_packet *forw_packet,
         spinlock_t *lock)
{

 spin_lock_bh(lock);
 if (batadv_forw_packet_was_stolen(forw_packet)) {
  spin_unlock_bh(lock);
  return 0;
 }

 hlist_del_init(&forw_packet->list);


 hlist_add_fake(&forw_packet->cleanup_list);

 spin_unlock_bh(lock);
 return 1;
}
