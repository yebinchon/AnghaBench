
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sock {int dummy; } ;
struct hci_dev {int dummy; } ;


 int HCI_CHANNEL_CONTROL ;
 int mgmt_send_event (int ,struct hci_dev*,int ,void*,int ,int,struct sock*) ;

__attribute__((used)) static int mgmt_limited_event(u16 event, struct hci_dev *hdev, void *data,
         u16 len, int flag, struct sock *skip_sk)
{
 return mgmt_send_event(event, hdev, HCI_CHANNEL_CONTROL, data, len,
          flag, skip_sk);
}
