
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dev_type; } ;
struct hci_conn {int dummy; } ;
struct hci_chan {struct hci_conn* conn; } ;
typedef int __u16 ;




 int bt_dev_err (struct hci_dev*,char*,int) ;
 struct hci_chan* hci_chan_lookup_handle (struct hci_dev*,int ) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;

__attribute__((used)) static struct hci_conn *__hci_conn_lookup_handle(struct hci_dev *hdev,
       __u16 handle)
{
 struct hci_chan *chan;

 switch (hdev->dev_type) {
 case 128:
  return hci_conn_hash_lookup_handle(hdev, handle);
 case 129:
  chan = hci_chan_lookup_handle(hdev, handle);
  if (chan)
   return chan->conn;
  break;
 default:
  bt_dev_err(hdev, "unknown dev_type %d", hdev->dev_type);
  break;
 }

 return ((void*)0);
}
