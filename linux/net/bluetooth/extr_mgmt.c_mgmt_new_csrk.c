
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int* b; } ;
struct smp_csrk {scalar_t__ bdaddr_type; int val; int type; TYPE_3__ bdaddr; } ;
struct TYPE_4__ {int type; int bdaddr; } ;
struct TYPE_5__ {int val; int type; TYPE_1__ addr; } ;
struct mgmt_ev_new_csrk {int store_hint; TYPE_2__ key; } ;
struct hci_dev {int dummy; } ;
typedef int ev ;


 scalar_t__ ADDR_LE_DEV_RANDOM ;
 int LE_LINK ;
 int MGMT_EV_NEW_CSRK ;
 int bacpy (int *,TYPE_3__*) ;
 int link_to_bdaddr (int ,scalar_t__) ;
 int memcpy (int ,int ,int) ;
 int memset (struct mgmt_ev_new_csrk*,int ,int) ;
 int mgmt_event (int ,struct hci_dev*,struct mgmt_ev_new_csrk*,int,int *) ;

void mgmt_new_csrk(struct hci_dev *hdev, struct smp_csrk *csrk,
     bool persistent)
{
 struct mgmt_ev_new_csrk ev;

 memset(&ev, 0, sizeof(ev));
 if (csrk->bdaddr_type == ADDR_LE_DEV_RANDOM &&
     (csrk->bdaddr.b[5] & 0xc0) != 0xc0)
  ev.store_hint = 0x00;
 else
  ev.store_hint = persistent;

 bacpy(&ev.key.addr.bdaddr, &csrk->bdaddr);
 ev.key.addr.type = link_to_bdaddr(LE_LINK, csrk->bdaddr_type);
 ev.key.type = csrk->type;
 memcpy(ev.key.val, csrk->val, sizeof(csrk->val));

 mgmt_event(MGMT_EV_NEW_CSRK, hdev, &ev, sizeof(ev), ((void*)0));
}
