
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {scalar_t__ (* recv ) (struct nci_uart*,TYPE_3__*) ;} ;
struct nci_uart {int rx_packet_len; TYPE_3__* rx_skb; TYPE_2__* tty; TYPE_1__ ops; int ndev; } ;
struct TYPE_9__ {scalar_t__ len; int data; } ;
struct TYPE_8__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ NCI_CTRL_HDR_SIZE ;
 int NCI_MAX_PACKET_SIZE ;
 scalar_t__ nci_plen (int ) ;
 TYPE_3__* nci_skb_alloc (int ,int ,int ) ;
 int nfc_err (int ,char*) ;
 int skb_put_data (TYPE_3__*,int const*,int) ;
 int skb_put_u8 (TYPE_3__*,int ) ;
 scalar_t__ stub1 (struct nci_uart*,TYPE_3__*) ;

__attribute__((used)) static int nci_uart_default_recv_buf(struct nci_uart *nu, const u8 *data,
         char *flags, int count)
{
 int chunk_len;

 if (!nu->ndev) {
  nfc_err(nu->tty->dev,
   "receive data from tty but no NCI dev is attached yet, drop buffer\n");
  return 0;
 }




 while (count > 0) {

  if (!nu->rx_skb) {
   nu->rx_packet_len = -1;
   nu->rx_skb = nci_skb_alloc(nu->ndev,
         NCI_MAX_PACKET_SIZE,
         GFP_KERNEL);
   if (!nu->rx_skb)
    return -ENOMEM;
  }


  if (nu->rx_skb->len < NCI_CTRL_HDR_SIZE) {
   skb_put_u8(nu->rx_skb, *data++);
   --count;
   continue;
  }


  if (nu->rx_packet_len < 0)
   nu->rx_packet_len = NCI_CTRL_HDR_SIZE +
    nci_plen(nu->rx_skb->data);




  chunk_len = nu->rx_packet_len - nu->rx_skb->len;
  if (count < chunk_len)
   chunk_len = count;
  skb_put_data(nu->rx_skb, data, chunk_len);
  data += chunk_len;
  count -= chunk_len;


  if (nu->rx_packet_len == nu->rx_skb->len) {

   if (nu->ops.recv(nu, nu->rx_skb) != 0)
    nfc_err(nu->tty->dev, "corrupted RX packet\n");

   nu->rx_skb = ((void*)0);
  }
 }

 return 0;
}
