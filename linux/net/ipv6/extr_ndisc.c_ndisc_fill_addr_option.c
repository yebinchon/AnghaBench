
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {TYPE_1__* dev; } ;
struct TYPE_2__ {int type; int addr_len; } ;


 int __ndisc_fill_addr_option (struct sk_buff*,int,void*,int ,int ) ;
 int ndisc_addr_option_pad (int ) ;
 int ndisc_ops_fill_addr_option (TYPE_1__*,struct sk_buff*,int ) ;

__attribute__((used)) static inline void ndisc_fill_addr_option(struct sk_buff *skb, int type,
       void *data, u8 icmp6_type)
{
 __ndisc_fill_addr_option(skb, type, data, skb->dev->addr_len,
     ndisc_addr_option_pad(skb->dev->type));
 ndisc_ops_fill_addr_option(skb->dev, skb, icmp6_type);
}
