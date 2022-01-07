
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wimax_dev {int dummy; } ;
struct sk_buff {size_t len; void* data; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int d_dump (int,struct device*,void*,size_t) ;
 int d_printf (int,struct device*,char*,...) ;
 int genlmsg_multicast (int *,struct sk_buff*,int ,int ,int ) ;
 int might_sleep () ;
 struct device* wimax_dev_to_dev (struct wimax_dev*) ;
 int wimax_gnl_family ;

int wimax_msg_send(struct wimax_dev *wimax_dev, struct sk_buff *skb)
{
 struct device *dev = wimax_dev_to_dev(wimax_dev);
 void *msg = skb->data;
 size_t size = skb->len;
 might_sleep();

 d_printf(1, dev, "CTX: wimax msg, %zu bytes\n", size);
 d_dump(2, dev, msg, size);
 genlmsg_multicast(&wimax_gnl_family, skb, 0, 0, GFP_KERNEL);
 d_printf(1, dev, "CTX: genl multicast done\n");
 return 0;
}
