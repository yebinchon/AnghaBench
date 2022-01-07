
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int* data; } ;


 int NCI_SPI_ACK_SHIFT ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static u8 nci_spi_get_ack(struct sk_buff *skb)
{
 u8 ret;

 ret = skb->data[0] >> NCI_SPI_ACK_SHIFT;


 skb_pull(skb, 2);

 return ret;
}
