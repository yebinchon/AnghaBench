
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_chan {int dummy; } ;
struct hci_dev {struct l2cap_chan* smp_data; struct l2cap_chan* smp_bredr_data; } ;


 int smp_del_chan (struct l2cap_chan*) ;

void smp_unregister(struct hci_dev *hdev)
{
 struct l2cap_chan *chan;

 if (hdev->smp_bredr_data) {
  chan = hdev->smp_bredr_data;
  hdev->smp_bredr_data = ((void*)0);
  smp_del_chan(chan);
 }

 if (hdev->smp_data) {
  chan = hdev->smp_data;
  hdev->smp_data = ((void*)0);
  smp_del_chan(chan);
 }
}
