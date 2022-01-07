
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int CRC_A_INIT ;
 int crc_ccitt ;
 int digital_skb_check_crc (struct sk_buff*,int ,int ,int ,int ) ;

__attribute__((used)) static inline int digital_skb_check_crc_a(struct sk_buff *skb)
{
 return digital_skb_check_crc(skb, crc_ccitt, CRC_A_INIT, 0, 0);
}
