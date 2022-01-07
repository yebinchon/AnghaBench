
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_rp_read_voice_setting {scalar_t__ status; int voice_setting; } ;
struct hci_dev {scalar_t__ voice_setting; int (* notify ) (struct hci_dev*,int ) ;int name; } ;
typedef scalar_t__ __u16 ;


 int BT_DBG (char*,int ,scalar_t__) ;
 int HCI_NOTIFY_VOICE_SETTING ;
 scalar_t__ __le16_to_cpu (int ) ;
 int stub1 (struct hci_dev*,int ) ;

__attribute__((used)) static void hci_cc_read_voice_setting(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_rp_read_voice_setting *rp = (void *) skb->data;
 __u16 setting;

 BT_DBG("%s status 0x%2.2x", hdev->name, rp->status);

 if (rp->status)
  return;

 setting = __le16_to_cpu(rp->voice_setting);

 if (hdev->voice_setting == setting)
  return;

 hdev->voice_setting = setting;

 BT_DBG("%s voice setting 0x%4.4x", hdev->name, setting);

 if (hdev->notify)
  hdev->notify(hdev, HCI_NOTIFY_VOICE_SETTING);
}
