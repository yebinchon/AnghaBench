
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct sk_buff {int priority; int len; scalar_t__ data; } ;
struct l2cap_hdr {void* cid; void* len; } ;
struct l2cap_chan {scalar_t__ fcs; int flags; scalar_t__ dcid; } ;


 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 int FLAG_EXT_CTRL ;
 int GFP_KERNEL ;
 int HCI_PRIO_MAX ;
 scalar_t__ L2CAP_ENH_CTRL_SIZE ;
 scalar_t__ L2CAP_EXT_CTRL_SIZE ;
 scalar_t__ L2CAP_FCS_CRC16 ;
 scalar_t__ L2CAP_FCS_SIZE ;
 scalar_t__ L2CAP_HDR_SIZE ;
 int __ertm_hdr_size (struct l2cap_chan*) ;
 struct sk_buff* bt_skb_alloc (int,int ) ;
 void* cpu_to_le16 (scalar_t__) ;
 int crc16 (int ,int *,int ) ;
 int put_unaligned_le16 (int ,struct l2cap_hdr*) ;
 int put_unaligned_le32 (int ,struct l2cap_hdr*) ;
 struct l2cap_hdr* skb_put (struct sk_buff*,scalar_t__) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static struct sk_buff *l2cap_create_sframe_pdu(struct l2cap_chan *chan,
            u32 control)
{
 struct sk_buff *skb;
 struct l2cap_hdr *lh;
 int hlen = __ertm_hdr_size(chan);

 if (chan->fcs == L2CAP_FCS_CRC16)
  hlen += L2CAP_FCS_SIZE;

 skb = bt_skb_alloc(hlen, GFP_KERNEL);

 if (!skb)
  return ERR_PTR(-ENOMEM);

 lh = skb_put(skb, L2CAP_HDR_SIZE);
 lh->len = cpu_to_le16(hlen - L2CAP_HDR_SIZE);
 lh->cid = cpu_to_le16(chan->dcid);

 if (test_bit(FLAG_EXT_CTRL, &chan->flags))
  put_unaligned_le32(control, skb_put(skb, L2CAP_EXT_CTRL_SIZE));
 else
  put_unaligned_le16(control, skb_put(skb, L2CAP_ENH_CTRL_SIZE));

 if (chan->fcs == L2CAP_FCS_CRC16) {
  u16 fcs = crc16(0, (u8 *)skb->data, skb->len);
  put_unaligned_le16(fcs, skb_put(skb, L2CAP_FCS_SIZE));
 }

 skb->priority = HCI_PRIO_MAX;
 return skb;
}
