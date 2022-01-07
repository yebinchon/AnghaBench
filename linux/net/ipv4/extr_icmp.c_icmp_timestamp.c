
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct icmphdr {int dummy; } ;
struct TYPE_6__ {scalar_t__ code; int type; } ;
struct TYPE_4__ {TYPE_3__ icmph; int * times; } ;
struct icmp_bxm {int head_len; scalar_t__ data_len; scalar_t__ offset; struct sk_buff* skb; TYPE_1__ data; } ;
struct TYPE_5__ {int dev; } ;


 int BUG_ON (int ) ;
 int ICMP_MIB_INERRORS ;
 int ICMP_TIMESTAMPREPLY ;
 int __ICMP_INC_STATS (int ,int ) ;
 int dev_net (int ) ;
 TYPE_3__* icmp_hdr (struct sk_buff*) ;
 int icmp_reply (struct icmp_bxm*,struct sk_buff*) ;
 int inet_current_timestamp () ;
 int skb_copy_bits (struct sk_buff*,int ,int *,int) ;
 TYPE_2__* skb_dst (struct sk_buff*) ;

__attribute__((used)) static bool icmp_timestamp(struct sk_buff *skb)
{
 struct icmp_bxm icmp_param;



 if (skb->len < 4)
  goto out_err;




 icmp_param.data.times[1] = inet_current_timestamp();
 icmp_param.data.times[2] = icmp_param.data.times[1];

 BUG_ON(skb_copy_bits(skb, 0, &icmp_param.data.times[0], 4));

 icmp_param.data.icmph = *icmp_hdr(skb);
 icmp_param.data.icmph.type = ICMP_TIMESTAMPREPLY;
 icmp_param.data.icmph.code = 0;
 icmp_param.skb = skb;
 icmp_param.offset = 0;
 icmp_param.data_len = 0;
 icmp_param.head_len = sizeof(struct icmphdr) + 12;
 icmp_reply(&icmp_param, skb);
 return 1;

out_err:
 __ICMP_INC_STATS(dev_net(skb_dst(skb)->dev), ICMP_MIB_INERRORS);
 return 0;
}
