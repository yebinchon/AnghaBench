
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smp_irk {int val; int addr_type; int bdaddr; int rpa; } ;
struct TYPE_3__ {int type; int bdaddr; } ;
struct TYPE_4__ {int val; TYPE_1__ addr; } ;
struct mgmt_ev_new_irk {int store_hint; TYPE_2__ irk; int rpa; } ;
struct hci_dev {int dummy; } ;
typedef int ev ;


 int LE_LINK ;
 int MGMT_EV_NEW_IRK ;
 int bacpy (int *,int *) ;
 int link_to_bdaddr (int ,int ) ;
 int memcpy (int ,int ,int) ;
 int memset (struct mgmt_ev_new_irk*,int ,int) ;
 int mgmt_event (int ,struct hci_dev*,struct mgmt_ev_new_irk*,int,int *) ;

void mgmt_new_irk(struct hci_dev *hdev, struct smp_irk *irk, bool persistent)
{
 struct mgmt_ev_new_irk ev;

 memset(&ev, 0, sizeof(ev));

 ev.store_hint = persistent;

 bacpy(&ev.rpa, &irk->rpa);
 bacpy(&ev.irk.addr.bdaddr, &irk->bdaddr);
 ev.irk.addr.type = link_to_bdaddr(LE_LINK, irk->addr_type);
 memcpy(ev.irk.val, irk->val, sizeof(irk->val));

 mgmt_event(MGMT_EV_NEW_IRK, hdev, &ev, sizeof(ev), ((void*)0));
}
