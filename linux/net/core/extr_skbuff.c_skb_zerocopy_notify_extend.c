
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ ee_info; scalar_t__ ee_data; } ;
struct sock_exterr_skb {TYPE_1__ ee; } ;
struct sk_buff {int dummy; } ;


 struct sock_exterr_skb* SKB_EXT_ERR (struct sk_buff*) ;

__attribute__((used)) static bool skb_zerocopy_notify_extend(struct sk_buff *skb, u32 lo, u16 len)
{
 struct sock_exterr_skb *serr = SKB_EXT_ERR(skb);
 u32 old_lo, old_hi;
 u64 sum_len;

 old_lo = serr->ee.ee_info;
 old_hi = serr->ee.ee_data;
 sum_len = old_hi - old_lo + 1ULL + len;

 if (sum_len >= (1ULL << 32))
  return 0;

 if (lo != old_hi + 1)
  return 0;

 serr->ee.ee_data += len;
 return 1;
}
