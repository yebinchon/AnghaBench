
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int bdaddr; } ;
struct TYPE_4__ {int pin_len; int val; int type; TYPE_1__ addr; } ;
struct mgmt_ev_new_link_key {int store_hint; TYPE_2__ key; } ;
struct link_key {int pin_len; int val; int type; int bdaddr; } ;
struct hci_dev {int dummy; } ;
typedef int ev ;


 int BDADDR_BREDR ;
 int HCI_LINK_KEY_SIZE ;
 int MGMT_EV_NEW_LINK_KEY ;
 int bacpy (int *,int *) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct mgmt_ev_new_link_key*,int ,int) ;
 int mgmt_event (int ,struct hci_dev*,struct mgmt_ev_new_link_key*,int,int *) ;

void mgmt_new_link_key(struct hci_dev *hdev, struct link_key *key,
         bool persistent)
{
 struct mgmt_ev_new_link_key ev;

 memset(&ev, 0, sizeof(ev));

 ev.store_hint = persistent;
 bacpy(&ev.key.addr.bdaddr, &key->bdaddr);
 ev.key.addr.type = BDADDR_BREDR;
 ev.key.type = key->type;
 memcpy(ev.key.val, key->val, HCI_LINK_KEY_SIZE);
 ev.key.pin_len = key->pin_len;

 mgmt_event(MGMT_EV_NEW_LINK_KEY, hdev, &ev, sizeof(ev), ((void*)0));
}
