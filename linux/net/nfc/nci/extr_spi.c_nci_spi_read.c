
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct nci_spi {scalar_t__ acknowledge_mode; int req_completion; int req_result; } ;


 int ACKNOWLEDGE_ACK ;
 int ACKNOWLEDGE_NACK ;
 scalar_t__ NCI_SPI_CRC_ENABLED ;
 struct sk_buff* __nci_spi_read (struct nci_spi*) ;
 int complete (int *) ;
 int kfree_skb (struct sk_buff*) ;
 int nci_spi_check_crc (struct sk_buff*) ;
 int nci_spi_get_ack (struct sk_buff*) ;
 int send_acknowledge (struct nci_spi*,int ) ;

struct sk_buff *nci_spi_read(struct nci_spi *nspi)
{
 struct sk_buff *skb;


 skb = __nci_spi_read(nspi);
 if (!skb)
  goto done;

 if (nspi->acknowledge_mode == NCI_SPI_CRC_ENABLED) {
  if (!nci_spi_check_crc(skb)) {
   send_acknowledge(nspi, ACKNOWLEDGE_NACK);
   goto done;
  }




  nspi->req_result = nci_spi_get_ack(skb);
  if (nspi->req_result)
   complete(&nspi->req_completion);
 }




 if (!skb->len) {
  kfree_skb(skb);
  skb = ((void*)0);
  goto done;
 }

 if (nspi->acknowledge_mode == NCI_SPI_CRC_ENABLED)
  send_acknowledge(nspi, ACKNOWLEDGE_ACK);

done:

 return skb;
}
