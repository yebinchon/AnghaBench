
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int clock_offset; } ;
struct inquiry_entry {int timestamp; TYPE_1__ data; } ;
struct hci_ev_clock_offset {int clock_offset; int status; int handle; } ;
struct hci_dev {int name; } ;
struct hci_conn {int dst; } ;


 int BT_DBG (char*,int ,int ) ;
 int __le16_to_cpu (int ) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 struct inquiry_entry* hci_inquiry_cache_lookup (struct hci_dev*,int *) ;
 int jiffies ;

__attribute__((used)) static void hci_clock_offset_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_clock_offset *ev = (void *) skb->data;
 struct hci_conn *conn;

 BT_DBG("%s status 0x%2.2x", hdev->name, ev->status);

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_handle(hdev, __le16_to_cpu(ev->handle));
 if (conn && !ev->status) {
  struct inquiry_entry *ie;

  ie = hci_inquiry_cache_lookup(hdev, &conn->dst);
  if (ie) {
   ie->data.clock_offset = ev->clock_offset;
   ie->timestamp = jiffies;
  }
 }

 hci_dev_unlock(hdev);
}
