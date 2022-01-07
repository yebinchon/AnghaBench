
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_chan {int dummy; } ;


 int BT_DBG (char*,struct hci_chan*) ;
 int hci_chan_del (struct hci_chan*) ;

void amp_destroy_logical_link(struct hci_chan *hchan, u8 reason)
{
 BT_DBG("hchan %p", hchan);

 hci_chan_del(hchan);
}
