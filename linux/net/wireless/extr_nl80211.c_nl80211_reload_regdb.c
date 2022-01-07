
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_info {int dummy; } ;


 int reg_reload_regdb () ;

__attribute__((used)) static int nl80211_reload_regdb(struct sk_buff *skb, struct genl_info *info)
{
 return reg_reload_regdb();
}
