
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct lec_arp_table {scalar_t__ status; scalar_t__ no_tries; int timer; int mac_addr; TYPE_1__* priv; scalar_t__ is_rdesc; } ;
struct TYPE_2__ {scalar_t__ max_retry_count; } ;


 scalar_t__ ESI_ARP_PENDING ;
 int HZ ;
 struct lec_arp_table* from_timer (struct lec_arp_table*,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int l_arp_xmt ;
 int l_rdesc_arp_xmt ;
 int mod_timer (int *,scalar_t__) ;
 int pr_debug (char*) ;
 int send_to_lecd (TYPE_1__*,int ,int ,int *,int *) ;
 int timer ;

__attribute__((used)) static void lec_arp_expire_arp(struct timer_list *t)
{
 struct lec_arp_table *entry;

 entry = from_timer(entry, t, timer);

 pr_debug("\n");
 if (entry->status == ESI_ARP_PENDING) {
  if (entry->no_tries <= entry->priv->max_retry_count) {
   if (entry->is_rdesc)
    send_to_lecd(entry->priv, l_rdesc_arp_xmt,
          entry->mac_addr, ((void*)0), ((void*)0));
   else
    send_to_lecd(entry->priv, l_arp_xmt,
          entry->mac_addr, ((void*)0), ((void*)0));
   entry->no_tries++;
  }
  mod_timer(&entry->timer, jiffies + (1 * HZ));
 }
}
