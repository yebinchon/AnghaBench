
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_ev_le_conn_complete {int supervision_timeout; int latency; int interval; int handle; int role; int bdaddr_type; int bdaddr; int status; } ;
struct hci_dev {int name; } ;


 int BT_DBG (char*,int ,int ) ;
 int le16_to_cpu (int ) ;
 int le_conn_complete_evt (struct hci_dev*,int ,int *,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void hci_le_conn_complete_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_le_conn_complete *ev = (void *) skb->data;

 BT_DBG("%s status 0x%2.2x", hdev->name, ev->status);

 le_conn_complete_evt(hdev, ev->status, &ev->bdaddr, ev->bdaddr_type,
        ev->role, le16_to_cpu(ev->handle),
        le16_to_cpu(ev->interval),
        le16_to_cpu(ev->latency),
        le16_to_cpu(ev->supervision_timeout));
}
