
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int protocol; } ;
struct TYPE_3__ {int * dev; } ;
typedef TYPE_1__ ax25_dev ;


 int GFP_ATOMIC ;
 struct sk_buff* alloc_skb (int,int ) ;
 int ax25_type_trans (struct sk_buff*,int *) ;
 int dev_queue_xmit (struct sk_buff*) ;
 unsigned char* skb_put (struct sk_buff*,int) ;
 int skb_reset_network_header (struct sk_buff*) ;

__attribute__((used)) static void ax25_kiss_cmd(ax25_dev *ax25_dev, unsigned char cmd, unsigned char param)
{
 struct sk_buff *skb;
 unsigned char *p;

 if (ax25_dev->dev == ((void*)0))
  return;

 if ((skb = alloc_skb(2, GFP_ATOMIC)) == ((void*)0))
  return;

 skb_reset_network_header(skb);
 p = skb_put(skb, 2);

 *p++ = cmd;
 *p++ = param;

 skb->protocol = ax25_type_trans(skb, ax25_dev->dev);

 dev_queue_xmit(skb);
}
