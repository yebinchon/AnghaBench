
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct devlink_fmsg_item {int nla_type; } ;


 int DEVLINK_ATTR_FMSG_OBJ_VALUE_TYPE ;
 int EINVAL ;






 int nla_put_u8 (struct sk_buff*,int ,int) ;

__attribute__((used)) static int
devlink_fmsg_item_fill_type(struct devlink_fmsg_item *msg, struct sk_buff *skb)
{
 switch (msg->nla_type) {
 case 132:
 case 128:
 case 130:
 case 129:
 case 131:
 case 133:
  return nla_put_u8(skb, DEVLINK_ATTR_FMSG_OBJ_VALUE_TYPE,
      msg->nla_type);
 default:
  return -EINVAL;
 }
}
