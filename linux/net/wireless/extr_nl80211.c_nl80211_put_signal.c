
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
typedef int s8 ;


 int BIT (int) ;
 int IEEE80211_MAX_CHAINS ;
 int nla_nest_end (struct sk_buff*,void*) ;
 void* nla_nest_start_noflag (struct sk_buff*,int) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int,int ) ;

__attribute__((used)) static bool nl80211_put_signal(struct sk_buff *msg, u8 mask, s8 *signal,
          int id)
{
 void *attr;
 int i = 0;

 if (!mask)
  return 1;

 attr = nla_nest_start_noflag(msg, id);
 if (!attr)
  return 0;

 for (i = 0; i < IEEE80211_MAX_CHAINS; i++) {
  if (!(mask & BIT(i)))
   continue;

  if (nla_put_u8(msg, i, signal[i]))
   return 0;
 }

 nla_nest_end(msg, attr);

 return 1;
}
