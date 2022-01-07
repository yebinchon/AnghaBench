
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct ip_esp_hdr {int spi; int seq_no; } ;
typedef int __be32 ;
struct TYPE_2__ {void* tmp; } ;


 TYPE_1__* ESP_SKB_CB (struct sk_buff*) ;
 int * esp_tmp_seqhi (void*) ;

__attribute__((used)) static void esp_restore_header(struct sk_buff *skb, unsigned int offset)
{
 struct ip_esp_hdr *esph = (void *)(skb->data + offset);
 void *tmp = ESP_SKB_CB(skb)->tmp;
 __be32 *seqhi = esp_tmp_seqhi(tmp);

 esph->seq_no = esph->spi;
 esph->spi = *seqhi;
}
