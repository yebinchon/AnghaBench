
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ver ;
typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct hci_mon_hdr {void* len; void* index; void* opcode; } ;
struct TYPE_4__ {int cookie; int channel; TYPE_1__* hdev; int * comm; } ;
struct TYPE_3__ {scalar_t__ id; } ;


 int BT_SUBSYS_REVISION ;
 int BT_SUBSYS_VERSION ;
 int GFP_ATOMIC ;



 scalar_t__ HCI_DEV_NONE ;
 scalar_t__ HCI_MON_CTRL_OPEN ;
 scalar_t__ HCI_MON_HDR_SIZE ;
 int HCI_SOCK_TRUSTED ;
 int TASK_COMM_LEN ;
 int __net_timestamp (struct sk_buff*) ;
 struct sk_buff* bt_skb_alloc (int,int ) ;
 void* cpu_to_le16 (scalar_t__) ;
 TYPE_2__* hci_pi (struct sock*) ;
 scalar_t__ hci_sock_test_flag (struct sock*,int ) ;
 int mgmt_fill_version_info (int *) ;
 int put_unaligned_le16 (int,int *) ;
 int put_unaligned_le32 (int,int *) ;
 struct hci_mon_hdr* skb_push (struct sk_buff*,scalar_t__) ;
 int * skb_put (struct sk_buff*,int) ;
 int skb_put_data (struct sk_buff*,int *,int) ;
 int skb_put_u8 (struct sk_buff*,int) ;

__attribute__((used)) static struct sk_buff *create_monitor_ctrl_open(struct sock *sk)
{
 struct hci_mon_hdr *hdr;
 struct sk_buff *skb;
 u16 format;
 u8 ver[3];
 u32 flags;


 if (!hci_pi(sk)->cookie)
  return ((void*)0);

 switch (hci_pi(sk)->channel) {
 case 129:
  format = 0x0000;
  ver[0] = BT_SUBSYS_VERSION;
  put_unaligned_le16(BT_SUBSYS_REVISION, ver + 1);
  break;
 case 128:
  format = 0x0001;
  ver[0] = BT_SUBSYS_VERSION;
  put_unaligned_le16(BT_SUBSYS_REVISION, ver + 1);
  break;
 case 130:
  format = 0x0002;
  mgmt_fill_version_info(ver);
  break;
 default:

  return ((void*)0);
 }

 skb = bt_skb_alloc(14 + TASK_COMM_LEN , GFP_ATOMIC);
 if (!skb)
  return ((void*)0);

 flags = hci_sock_test_flag(sk, HCI_SOCK_TRUSTED) ? 0x1 : 0x0;

 put_unaligned_le32(hci_pi(sk)->cookie, skb_put(skb, 4));
 put_unaligned_le16(format, skb_put(skb, 2));
 skb_put_data(skb, ver, sizeof(ver));
 put_unaligned_le32(flags, skb_put(skb, 4));
 skb_put_u8(skb, TASK_COMM_LEN);
 skb_put_data(skb, hci_pi(sk)->comm, TASK_COMM_LEN);

 __net_timestamp(skb);

 hdr = skb_push(skb, HCI_MON_HDR_SIZE);
 hdr->opcode = cpu_to_le16(HCI_MON_CTRL_OPEN);
 if (hci_pi(sk)->hdev)
  hdr->index = cpu_to_le16(hci_pi(sk)->hdev->id);
 else
  hdr->index = cpu_to_le16(HCI_DEV_NONE);
 hdr->len = cpu_to_le16(skb->len - HCI_MON_HDR_SIZE);

 return skb;
}
