
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;


 int BATADV_ATTR_TPMETER_COOKIE ;
 int ENOBUFS ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int
batadv_netlink_tp_meter_put(struct sk_buff *msg, u32 cookie)
{
 if (nla_put_u32(msg, BATADV_ATTR_TPMETER_COOKIE, cookie))
  return -ENOBUFS;

 return 0;
}
