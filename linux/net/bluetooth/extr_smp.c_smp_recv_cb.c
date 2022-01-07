
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smp_chan {int security_timer; } ;
struct sk_buff {int dummy; } ;
struct l2cap_chan {TYPE_1__* conn; struct smp_chan* data; } ;
struct TYPE_2__ {int hcon; } ;


 int BT_DBG (char*,struct l2cap_chan*) ;
 int HCI_ERROR_AUTH_FAILURE ;
 int cancel_delayed_work_sync (int *) ;
 int hci_disconnect (int ,int ) ;
 int smp_sig_channel (struct l2cap_chan*,struct sk_buff*) ;

__attribute__((used)) static int smp_recv_cb(struct l2cap_chan *chan, struct sk_buff *skb)
{
 int err;

 BT_DBG("chan %p", chan);

 err = smp_sig_channel(chan, skb);
 if (err) {
  struct smp_chan *smp = chan->data;

  if (smp)
   cancel_delayed_work_sync(&smp->security_timer);

  hci_disconnect(chan->conn->hcon, HCI_ERROR_AUTH_FAILURE);
 }

 return err;
}
