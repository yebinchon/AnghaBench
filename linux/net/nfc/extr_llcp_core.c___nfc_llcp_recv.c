
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfc_llcp_local {int rx_work; int link_timer; struct sk_buff* rx_pending; } ;


 int del_timer (int *) ;
 int schedule_work (int *) ;

__attribute__((used)) static void __nfc_llcp_recv(struct nfc_llcp_local *local, struct sk_buff *skb)
{
 local->rx_pending = skb;
 del_timer(&local->link_timer);
 schedule_work(&local->rx_work);
}
