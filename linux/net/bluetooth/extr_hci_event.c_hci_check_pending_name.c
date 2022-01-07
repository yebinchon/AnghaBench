
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int rssi; } ;
struct inquiry_entry {int name_state; TYPE_1__ data; int list; } ;
struct discovery_state {scalar_t__ state; } ;
struct hci_dev {struct discovery_state discovery; } ;
struct hci_conn {scalar_t__ state; int flags; } ;
typedef int bdaddr_t ;


 int ACL_LINK ;
 scalar_t__ BT_CONFIG ;
 scalar_t__ BT_CONNECTED ;
 scalar_t__ DISCOVERY_RESOLVING ;
 scalar_t__ DISCOVERY_STOPPED ;
 scalar_t__ DISCOVERY_STOPPING ;
 int HCI_CONN_MGMT_CONNECTED ;
 int NAME_KNOWN ;
 int NAME_NOT_KNOWN ;
 int NAME_PENDING ;
 int hci_discovery_set_state (struct hci_dev*,scalar_t__) ;
 struct inquiry_entry* hci_inquiry_cache_lookup_resolve (struct hci_dev*,int *,int ) ;
 scalar_t__ hci_resolve_next_name (struct hci_dev*) ;
 int list_del (int *) ;
 int mgmt_device_connected (struct hci_dev*,struct hci_conn*,int ,int *,int ) ;
 int mgmt_remote_name (struct hci_dev*,int *,int ,int,int ,int *,int ) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void hci_check_pending_name(struct hci_dev *hdev, struct hci_conn *conn,
       bdaddr_t *bdaddr, u8 *name, u8 name_len)
{
 struct discovery_state *discov = &hdev->discovery;
 struct inquiry_entry *e;






 if (conn &&
     (conn->state == BT_CONFIG || conn->state == BT_CONNECTED) &&
     !test_and_set_bit(HCI_CONN_MGMT_CONNECTED, &conn->flags))
  mgmt_device_connected(hdev, conn, 0, name, name_len);

 if (discov->state == DISCOVERY_STOPPED)
  return;

 if (discov->state == DISCOVERY_STOPPING)
  goto discov_complete;

 if (discov->state != DISCOVERY_RESOLVING)
  return;

 e = hci_inquiry_cache_lookup_resolve(hdev, bdaddr, NAME_PENDING);




 if (!e)
  return;

 list_del(&e->list);
 if (name) {
  e->name_state = NAME_KNOWN;
  mgmt_remote_name(hdev, bdaddr, ACL_LINK, 0x00,
     e->data.rssi, name, name_len);
 } else {
  e->name_state = NAME_NOT_KNOWN;
 }

 if (hci_resolve_next_name(hdev))
  return;

discov_complete:
 hci_discovery_set_state(hdev, DISCOVERY_STOPPED);
}
