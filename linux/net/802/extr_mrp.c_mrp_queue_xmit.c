
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct mrp_applicant {int queue; } ;


 int dev_queue_xmit (struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;

__attribute__((used)) static void mrp_queue_xmit(struct mrp_applicant *app)
{
 struct sk_buff *skb;

 while ((skb = skb_dequeue(&app->queue)))
  dev_queue_xmit(skb);
}
