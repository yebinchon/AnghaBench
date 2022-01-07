
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct lapb_cb {int dev; TYPE_1__* callbacks; } ;
struct TYPE_2__ {int (* data_transmit ) (int ,struct sk_buff*) ;} ;


 int stub1 (int ,struct sk_buff*) ;

int lapb_data_transmit(struct lapb_cb *lapb, struct sk_buff *skb)
{
 int used = 0;

 if (lapb->callbacks->data_transmit) {
  lapb->callbacks->data_transmit(lapb->dev, skb);
  used = 1;
 }

 return used;
}
