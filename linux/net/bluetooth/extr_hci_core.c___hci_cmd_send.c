
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct hci_dev {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int bt_dev_err (struct hci_dev*,char*,...) ;
 int hci_opcode_ogf (int ) ;
 struct sk_buff* hci_prepare_cmd (struct hci_dev*,int ,int ,void const*) ;
 int hci_send_frame (struct hci_dev*,struct sk_buff*) ;

int __hci_cmd_send(struct hci_dev *hdev, u16 opcode, u32 plen,
     const void *param)
{
 struct sk_buff *skb;

 if (hci_opcode_ogf(opcode) != 0x3f) {
  bt_dev_err(hdev, "unresponded command not supported");
  return -EINVAL;
 }

 skb = hci_prepare_cmd(hdev, opcode, plen, param);
 if (!skb) {
  bt_dev_err(hdev, "no memory for command (opcode 0x%4.4x)",
      opcode);
  return -ENOMEM;
 }

 hci_send_frame(hdev, skb);

 return 0;
}
