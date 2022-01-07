
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int cs_change; int speed_hz; int delay_usecs; scalar_t__ len; struct spi_transfer* tx_buf; } ;
struct spi_message {int dummy; } ;
struct sk_buff {scalar_t__ len; struct spi_transfer* data; } ;
struct nci_spi {int spi; int xfer_speed_hz; int xfer_udelay; } ;


 int memset (struct spi_transfer*,int ,int) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;

__attribute__((used)) static int __nci_spi_send(struct nci_spi *nspi, struct sk_buff *skb,
     int cs_change)
{
 struct spi_message m;
 struct spi_transfer t;

 memset(&t, 0, sizeof(struct spi_transfer));

 if (skb) {
  t.tx_buf = skb->data;
  t.len = skb->len;
 } else {

  t.tx_buf = &t;
  t.len = 0;
 }
 t.cs_change = cs_change;
 t.delay_usecs = nspi->xfer_udelay;
 t.speed_hz = nspi->xfer_speed_hz;

 spi_message_init(&m);
 spi_message_add_tail(&t, &m);

 return spi_sync(nspi->spi, &m);
}
