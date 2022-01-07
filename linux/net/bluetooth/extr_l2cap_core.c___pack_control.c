
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct l2cap_ctrl {int dummy; } ;
struct l2cap_chan {int flags; } ;


 int FLAG_EXT_CTRL ;
 scalar_t__ L2CAP_HDR_SIZE ;
 int __pack_enhanced_control (struct l2cap_ctrl*) ;
 int __pack_extended_control (struct l2cap_ctrl*) ;
 int put_unaligned_le16 (int ,scalar_t__) ;
 int put_unaligned_le32 (int ,scalar_t__) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline void __pack_control(struct l2cap_chan *chan,
      struct l2cap_ctrl *control,
      struct sk_buff *skb)
{
 if (test_bit(FLAG_EXT_CTRL, &chan->flags)) {
  put_unaligned_le32(__pack_extended_control(control),
       skb->data + L2CAP_HDR_SIZE);
 } else {
  put_unaligned_le16(__pack_enhanced_control(control),
       skb->data + L2CAP_HDR_SIZE);
 }
}
