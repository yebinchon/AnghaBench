
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct mgmt_hdr {void* len; void* index; void* opcode; } ;
struct hci_dev {scalar_t__ id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned short HCI_CHANNEL_CONTROL ;
 scalar_t__ MGMT_INDEX_NONE ;
 int __net_timestamp (struct sk_buff*) ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 void* cpu_to_le16 (scalar_t__) ;
 int hci_send_monitor_ctrl_event (struct hci_dev*,scalar_t__,void*,scalar_t__,int ,int,struct sock*) ;
 int hci_send_to_channel (unsigned short,struct sk_buff*,int,struct sock*) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_get_ktime (struct sk_buff*) ;
 struct mgmt_hdr* skb_put (struct sk_buff*,int) ;
 int skb_put_data (struct sk_buff*,void*,scalar_t__) ;

int mgmt_send_event(u16 event, struct hci_dev *hdev, unsigned short channel,
      void *data, u16 data_len, int flag, struct sock *skip_sk)
{
 struct sk_buff *skb;
 struct mgmt_hdr *hdr;

 skb = alloc_skb(sizeof(*hdr) + data_len, GFP_KERNEL);
 if (!skb)
  return -ENOMEM;

 hdr = skb_put(skb, sizeof(*hdr));
 hdr->opcode = cpu_to_le16(event);
 if (hdev)
  hdr->index = cpu_to_le16(hdev->id);
 else
  hdr->index = cpu_to_le16(MGMT_INDEX_NONE);
 hdr->len = cpu_to_le16(data_len);

 if (data)
  skb_put_data(skb, data, data_len);


 __net_timestamp(skb);

 hci_send_to_channel(channel, skb, flag, skip_sk);

 if (channel == HCI_CHANNEL_CONTROL)
  hci_send_monitor_ctrl_event(hdev, event, data, data_len,
         skb_get_ktime(skb), flag, skip_sk);

 kfree_skb(skb);
 return 0;
}
