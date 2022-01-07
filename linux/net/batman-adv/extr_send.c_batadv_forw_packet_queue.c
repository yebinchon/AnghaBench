
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_head {int dummy; } ;
struct batadv_forw_packet {int delayed_work; int list; int cleanup_list; } ;
typedef int spinlock_t ;


 int WARN_ONCE (int ,char*) ;
 int batadv_event_workqueue ;
 scalar_t__ batadv_forw_packet_was_stolen (struct batadv_forw_packet*) ;
 int hlist_add_head (int *,struct hlist_head*) ;
 int hlist_del_init (int *) ;
 int hlist_fake (int *) ;
 scalar_t__ jiffies ;
 int queue_delayed_work (int ,int *,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void batadv_forw_packet_queue(struct batadv_forw_packet *forw_packet,
         spinlock_t *lock, struct hlist_head *head,
         unsigned long send_time)
{
 spin_lock_bh(lock);


 if (batadv_forw_packet_was_stolen(forw_packet)) {



  WARN_ONCE(hlist_fake(&forw_packet->cleanup_list),
     "Requeuing after batadv_forw_packet_steal() not allowed!\n");

  spin_unlock_bh(lock);
  return;
 }

 hlist_del_init(&forw_packet->list);
 hlist_add_head(&forw_packet->list, head);

 queue_delayed_work(batadv_event_workqueue,
      &forw_packet->delayed_work,
      send_time - jiffies);
 spin_unlock_bh(lock);
}
