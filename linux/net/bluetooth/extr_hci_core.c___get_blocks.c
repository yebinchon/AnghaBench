
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; } ;
struct hci_dev {int block_len; } ;


 int DIV_ROUND_UP (scalar_t__,int ) ;
 scalar_t__ HCI_ACL_HDR_SIZE ;

__attribute__((used)) static inline int __get_blocks(struct hci_dev *hdev, struct sk_buff *skb)
{

 return DIV_ROUND_UP(skb->len - HCI_ACL_HDR_SIZE, hdev->block_len);
}
