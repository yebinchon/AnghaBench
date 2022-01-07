
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct esp_output_extra {scalar_t__ esphoff; } ;
typedef int __be32 ;
struct TYPE_2__ {void* tmp; } ;


 TYPE_1__* ESP_SKB_CB (struct sk_buff*) ;
 int esp_restore_header (struct sk_buff*,scalar_t__) ;
 struct esp_output_extra* esp_tmp_extra (void*) ;
 scalar_t__ skb_transport_offset (struct sk_buff*) ;

__attribute__((used)) static void esp_output_restore_header(struct sk_buff *skb)
{
 void *tmp = ESP_SKB_CB(skb)->tmp;
 struct esp_output_extra *extra = esp_tmp_extra(tmp);

 esp_restore_header(skb, skb_transport_offset(skb) + extra->esphoff -
    sizeof(__be32));
}
