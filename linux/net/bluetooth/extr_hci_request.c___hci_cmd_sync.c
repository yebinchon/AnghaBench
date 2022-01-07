
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct hci_dev {int dummy; } ;


 struct sk_buff* __hci_cmd_sync_ev (struct hci_dev*,int ,int ,void const*,int ,int ) ;

struct sk_buff *__hci_cmd_sync(struct hci_dev *hdev, u16 opcode, u32 plen,
          const void *param, u32 timeout)
{
 return __hci_cmd_sync_ev(hdev, opcode, plen, param, 0, timeout);
}
