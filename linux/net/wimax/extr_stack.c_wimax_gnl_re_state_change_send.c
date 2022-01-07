
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wimax_dev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int d_fnend (int,struct device*,char*,struct wimax_dev*,struct sk_buff*,int) ;
 int d_fnstart (int,struct device*,char*,struct wimax_dev*,struct sk_buff*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast (int *,struct sk_buff*,int ,int ,int ) ;
 struct device* wimax_dev_to_dev (struct wimax_dev*) ;
 int wimax_gnl_family ;

__attribute__((used)) static
int wimax_gnl_re_state_change_send(
 struct wimax_dev *wimax_dev, struct sk_buff *report_skb,
 void *header)
{
 int result = 0;
 struct device *dev = wimax_dev_to_dev(wimax_dev);
 d_fnstart(3, dev, "(wimax_dev %p report_skb %p)\n",
    wimax_dev, report_skb);
 if (report_skb == ((void*)0)) {
  result = -ENOMEM;
  goto out;
 }
 genlmsg_end(report_skb, header);
 genlmsg_multicast(&wimax_gnl_family, report_skb, 0, 0, GFP_KERNEL);
out:
 d_fnend(3, dev, "(wimax_dev %p report_skb %p) = %d\n",
  wimax_dev, report_skb, result);
 return result;
}
