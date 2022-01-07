
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int hard_header_len; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int HH_DATA_ALIGN (int) ;
 scalar_t__ pskb_expand_head (struct sk_buff*,int,int ,int ) ;
 TYPE_2__* skb_dst (struct sk_buff*) ;
 int skb_headroom (struct sk_buff*) ;

__attribute__((used)) static int xmit_check_hhlen(struct sk_buff *skb)
{
 int hh_len = skb_dst(skb)->dev->hard_header_len;

 if (skb_headroom(skb) < hh_len) {
  int nhead = HH_DATA_ALIGN(hh_len - skb_headroom(skb));

  if (pskb_expand_head(skb, nhead, 0, GFP_ATOMIC))
   return -ENOMEM;
 }

 return 0;
}
