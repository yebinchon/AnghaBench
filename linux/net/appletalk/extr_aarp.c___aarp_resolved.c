
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct aarp_entry {struct aarp_entry* next; int hwaddr; scalar_t__ expires_at; int packet_queue; } ;
struct TYPE_3__ {int (* request ) (TYPE_1__*,struct sk_buff*,int ) ;} ;


 TYPE_1__* ddp_dl ;
 scalar_t__ jiffies ;
 struct aarp_entry** resolved ;
 struct sk_buff* skb_dequeue (int *) ;
 int stub1 (TYPE_1__*,struct sk_buff*,int ) ;
 int sysctl_aarp_expiry_time ;
 int unresolved_count ;

__attribute__((used)) static void __aarp_resolved(struct aarp_entry **list, struct aarp_entry *a,
       int hash)
{
 struct sk_buff *skb;

 while (*list)
  if (*list == a) {
   unresolved_count--;
   *list = a->next;


   a->next = resolved[hash];
   resolved[hash] = a;


   while ((skb = skb_dequeue(&a->packet_queue)) != ((void*)0)) {
    a->expires_at = jiffies +
      sysctl_aarp_expiry_time * 10;
    ddp_dl->request(ddp_dl, skb, a->hwaddr);
   }
  } else
   list = &((*list)->next);
}
