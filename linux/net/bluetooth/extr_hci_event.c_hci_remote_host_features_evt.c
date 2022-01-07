
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int ssp_mode; } ;
struct inquiry_entry {TYPE_1__ data; } ;
struct hci_ev_remote_host_features {int* features; int bdaddr; } ;
struct hci_dev {int name; } ;
struct hci_conn {int * features; } ;


 int ACL_LINK ;
 int BT_DBG (char*,int ) ;
 int LMP_HOST_SSP ;
 struct hci_conn* hci_conn_hash_lookup_ba (struct hci_dev*,int ,int *) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 struct inquiry_entry* hci_inquiry_cache_lookup (struct hci_dev*,int *) ;
 int memcpy (int ,int*,int) ;

__attribute__((used)) static void hci_remote_host_features_evt(struct hci_dev *hdev,
      struct sk_buff *skb)
{
 struct hci_ev_remote_host_features *ev = (void *) skb->data;
 struct inquiry_entry *ie;
 struct hci_conn *conn;

 BT_DBG("%s", hdev->name);

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_ba(hdev, ACL_LINK, &ev->bdaddr);
 if (conn)
  memcpy(conn->features[1], ev->features, 8);

 ie = hci_inquiry_cache_lookup(hdev, &ev->bdaddr);
 if (ie)
  ie->data.ssp_mode = (ev->features[0] & LMP_HOST_SSP);

 hci_dev_unlock(hdev);
}
