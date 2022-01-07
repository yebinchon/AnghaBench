
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int* b; } ;
struct smp_ltk {scalar_t__ bdaddr_type; int enc_size; scalar_t__ type; int val; int rand; int ediv; TYPE_3__ bdaddr; } ;
struct TYPE_4__ {int type; int bdaddr; } ;
struct TYPE_5__ {int enc_size; int master; struct mgmt_ev_new_long_term_key* val; int rand; int ediv; int type; TYPE_1__ addr; } ;
struct mgmt_ev_new_long_term_key {int store_hint; TYPE_2__ key; } ;
struct hci_dev {int dummy; } ;
typedef int ev ;


 scalar_t__ ADDR_LE_DEV_RANDOM ;
 int LE_LINK ;
 int MGMT_EV_NEW_LONG_TERM_KEY ;
 scalar_t__ SMP_LTK ;
 int bacpy (int *,TYPE_3__*) ;
 int link_to_bdaddr (int ,scalar_t__) ;
 int memcpy (struct mgmt_ev_new_long_term_key*,int ,int) ;
 int memset (struct mgmt_ev_new_long_term_key*,int ,int) ;
 int mgmt_event (int ,struct hci_dev*,struct mgmt_ev_new_long_term_key*,int,int *) ;
 int mgmt_ltk_type (struct smp_ltk*) ;

void mgmt_new_ltk(struct hci_dev *hdev, struct smp_ltk *key, bool persistent)
{
 struct mgmt_ev_new_long_term_key ev;

 memset(&ev, 0, sizeof(ev));
 if (key->bdaddr_type == ADDR_LE_DEV_RANDOM &&
     (key->bdaddr.b[5] & 0xc0) != 0xc0)
  ev.store_hint = 0x00;
 else
  ev.store_hint = persistent;

 bacpy(&ev.key.addr.bdaddr, &key->bdaddr);
 ev.key.addr.type = link_to_bdaddr(LE_LINK, key->bdaddr_type);
 ev.key.type = mgmt_ltk_type(key);
 ev.key.enc_size = key->enc_size;
 ev.key.ediv = key->ediv;
 ev.key.rand = key->rand;

 if (key->type == SMP_LTK)
  ev.key.master = 1;




 memcpy(ev.key.val, key->val, key->enc_size);
 memset(ev.key.val + key->enc_size, 0,
        sizeof(ev.key.val) - key->enc_size);

 mgmt_event(MGMT_EV_NEW_LONG_TERM_KEY, hdev, &ev, sizeof(ev), ((void*)0));
}
