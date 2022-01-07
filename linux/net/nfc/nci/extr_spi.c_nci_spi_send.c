
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {unsigned int len; int data; } ;
struct nci_spi {unsigned char acknowledge_mode; scalar_t__ req_result; int req_completion; } ;
struct completion {int dummy; } ;


 scalar_t__ ACKNOWLEDGE_NACK ;
 int CRC_INIT ;
 int EIO ;
 int ETIME ;
 unsigned char NCI_SPI_CRC_DISABLED ;
 unsigned char NCI_SPI_CRC_ENABLED ;
 unsigned char NCI_SPI_DIRECT_WRITE ;
 int NCI_SPI_HDR_LEN ;
 int NCI_SPI_SEND_TIMEOUT ;
 int __nci_spi_send (struct nci_spi*,struct sk_buff*,int) ;
 int crc_ccitt (int ,int ,unsigned int) ;
 int kfree_skb (struct sk_buff*) ;
 int msecs_to_jiffies (int) ;
 int reinit_completion (int *) ;
 unsigned char* skb_push (struct sk_buff*,int ) ;
 int skb_put_u8 (struct sk_buff*,int) ;
 long wait_for_completion_interruptible_timeout (int *,int ) ;
 scalar_t__ wait_for_completion_timeout (struct completion*,int ) ;

int nci_spi_send(struct nci_spi *nspi,
   struct completion *write_handshake_completion,
   struct sk_buff *skb)
{
 unsigned int payload_len = skb->len;
 unsigned char *hdr;
 int ret;
 long completion_rc;


 hdr = skb_push(skb, NCI_SPI_HDR_LEN);
 hdr[0] = NCI_SPI_DIRECT_WRITE;
 hdr[1] = nspi->acknowledge_mode;
 hdr[2] = payload_len >> 8;
 hdr[3] = payload_len & 0xFF;

 if (nspi->acknowledge_mode == NCI_SPI_CRC_ENABLED) {
  u16 crc;

  crc = crc_ccitt(CRC_INIT, skb->data, skb->len);
  skb_put_u8(skb, crc >> 8);
  skb_put_u8(skb, crc & 0xFF);
 }

 if (write_handshake_completion) {

  ret = __nci_spi_send(nspi, ((void*)0), 1);
  if (ret)
   goto done;


  if (wait_for_completion_timeout(write_handshake_completion,
      msecs_to_jiffies(1000)) == 0) {
   ret = -ETIME;
   goto done;
  }
 }

 ret = __nci_spi_send(nspi, skb, 0);
 if (ret != 0 || nspi->acknowledge_mode == NCI_SPI_CRC_DISABLED)
  goto done;

 reinit_completion(&nspi->req_completion);
 completion_rc = wait_for_completion_interruptible_timeout(
       &nspi->req_completion,
       NCI_SPI_SEND_TIMEOUT);

 if (completion_rc <= 0 || nspi->req_result == ACKNOWLEDGE_NACK)
  ret = -EIO;

done:
 kfree_skb(skb);

 return ret;
}
