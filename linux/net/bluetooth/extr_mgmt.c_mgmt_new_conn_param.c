
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int type; int bdaddr; } ;
struct mgmt_ev_new_conn_param {void* timeout; void* latency; void* max_interval; void* min_interval; int store_hint; TYPE_1__ addr; } ;
struct hci_dev {int dummy; } ;
typedef int ev ;
typedef int bdaddr_t ;


 int LE_LINK ;
 int MGMT_EV_NEW_CONN_PARAM ;
 int bacpy (int *,int *) ;
 void* cpu_to_le16 (int ) ;
 int hci_is_identity_address (int *,int ) ;
 int link_to_bdaddr (int ,int ) ;
 int memset (struct mgmt_ev_new_conn_param*,int ,int) ;
 int mgmt_event (int ,struct hci_dev*,struct mgmt_ev_new_conn_param*,int,int *) ;

void mgmt_new_conn_param(struct hci_dev *hdev, bdaddr_t *bdaddr,
    u8 bdaddr_type, u8 store_hint, u16 min_interval,
    u16 max_interval, u16 latency, u16 timeout)
{
 struct mgmt_ev_new_conn_param ev;

 if (!hci_is_identity_address(bdaddr, bdaddr_type))
  return;

 memset(&ev, 0, sizeof(ev));
 bacpy(&ev.addr.bdaddr, bdaddr);
 ev.addr.type = link_to_bdaddr(LE_LINK, bdaddr_type);
 ev.store_hint = store_hint;
 ev.min_interval = cpu_to_le16(min_interval);
 ev.max_interval = cpu_to_le16(max_interval);
 ev.latency = cpu_to_le16(latency);
 ev.timeout = cpu_to_le16(timeout);

 mgmt_event(MGMT_EV_NEW_CONN_PARAM, hdev, &ev, sizeof(ev), ((void*)0));
}
