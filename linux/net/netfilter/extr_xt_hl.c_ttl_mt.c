
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct xt_action_param {struct ipt_ttl_info* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct ipt_ttl_info {int mode; int const ttl; } ;
struct TYPE_2__ {int ttl; } ;






 TYPE_1__* ip_hdr (struct sk_buff const*) ;

__attribute__((used)) static bool ttl_mt(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct ipt_ttl_info *info = par->matchinfo;
 const u8 ttl = ip_hdr(skb)->ttl;

 switch (info->mode) {
 case 131:
  return ttl == info->ttl;
 case 128:
  return ttl != info->ttl;
 case 129:
  return ttl < info->ttl;
 case 130:
  return ttl > info->ttl;
 }

 return 0;
}
