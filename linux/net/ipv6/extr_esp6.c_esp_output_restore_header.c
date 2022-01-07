
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
typedef int __be32 ;


 int esp_restore_header (struct sk_buff*,scalar_t__) ;
 scalar_t__ skb_transport_offset (struct sk_buff*) ;

__attribute__((used)) static void esp_output_restore_header(struct sk_buff *skb)
{
 esp_restore_header(skb, skb_transport_offset(skb) - sizeof(__be32));
}
