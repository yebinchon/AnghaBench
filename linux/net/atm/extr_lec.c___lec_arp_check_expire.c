
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lec_priv {unsigned long forward_delay_time; unsigned long aging_time; scalar_t__ path_switching_delay; scalar_t__ max_unknown_frame_time; scalar_t__ topology_change; } ;
struct lec_arp_table {int flags; int* mac_addr; scalar_t__ status; scalar_t__ timestamp; int atm_addr; scalar_t__ packets_flooded; scalar_t__ last_used; } ;


 scalar_t__ ESI_ARP_PENDING ;
 scalar_t__ ESI_FLUSH_PENDING ;
 scalar_t__ ESI_VC_PENDING ;
 int LEC_PERMANENT_FLAG ;
 int LEC_REMOTE_FLAG ;
 scalar_t__ jiffies ;
 int l_svc_setup ;
 int lec_arp_hold (struct lec_arp_table*) ;
 int lec_arp_put (struct lec_arp_table*) ;
 int lec_arp_remove (struct lec_priv*,struct lec_arp_table*) ;
 int pr_debug (char*,...) ;
 int send_to_lecd (struct lec_priv*,int ,int*,int ,int *) ;
 scalar_t__ time_after (unsigned long,scalar_t__) ;
 scalar_t__ time_after_eq (unsigned long,scalar_t__) ;

__attribute__((used)) static bool __lec_arp_check_expire(struct lec_arp_table *entry,
       unsigned long now,
       struct lec_priv *priv)
{
 unsigned long time_to_check;

 if ((entry->flags) & LEC_REMOTE_FLAG && priv->topology_change)
  time_to_check = priv->forward_delay_time;
 else
  time_to_check = priv->aging_time;

 pr_debug("About to expire: %lx - %lx > %lx\n",
   now, entry->last_used, time_to_check);
 if (time_after(now, entry->last_used + time_to_check) &&
     !(entry->flags & LEC_PERMANENT_FLAG) &&
     !(entry->mac_addr[0] & 0x01)) {

  pr_debug("Entry timed out\n");
  lec_arp_remove(priv, entry);
  lec_arp_put(entry);
 } else {

  if ((entry->status == ESI_VC_PENDING ||
       entry->status == ESI_ARP_PENDING) &&
      time_after_eq(now, entry->timestamp +
           priv->max_unknown_frame_time)) {
   entry->timestamp = jiffies;
   entry->packets_flooded = 0;
   if (entry->status == ESI_VC_PENDING)
    send_to_lecd(priv, l_svc_setup,
          entry->mac_addr,
          entry->atm_addr,
          ((void*)0));
  }
  if (entry->status == ESI_FLUSH_PENDING &&
      time_after_eq(now, entry->timestamp +
           priv->path_switching_delay)) {
   lec_arp_hold(entry);
   return 1;
  }
 }

 return 0;
}
