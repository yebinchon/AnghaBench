
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int CRC_B_INIT ;
 int crc_ccitt ;
 int digital_skb_add_crc (struct sk_buff*,int ,int ,int,int ) ;

__attribute__((used)) static inline void digital_skb_add_crc_b(struct sk_buff *skb)
{
 digital_skb_add_crc(skb, crc_ccitt, CRC_B_INIT, 1, 0);
}
