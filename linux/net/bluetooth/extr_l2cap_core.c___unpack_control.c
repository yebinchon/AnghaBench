
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int data; } ;
struct l2cap_chan {int flags; } ;
struct TYPE_2__ {int l2cap; } ;


 int FLAG_EXT_CTRL ;
 int L2CAP_ENH_CTRL_SIZE ;
 int L2CAP_EXT_CTRL_SIZE ;
 int __unpack_enhanced_control (int ,int *) ;
 int __unpack_extended_control (int ,int *) ;
 TYPE_1__* bt_cb (struct sk_buff*) ;
 int get_unaligned_le16 (int ) ;
 int get_unaligned_le32 (int ) ;
 int skb_pull (struct sk_buff*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline void __unpack_control(struct l2cap_chan *chan,
        struct sk_buff *skb)
{
 if (test_bit(FLAG_EXT_CTRL, &chan->flags)) {
  __unpack_extended_control(get_unaligned_le32(skb->data),
       &bt_cb(skb)->l2cap);
  skb_pull(skb, L2CAP_EXT_CTRL_SIZE);
 } else {
  __unpack_enhanced_control(get_unaligned_le16(skb->data),
       &bt_cb(skb)->l2cap);
  skb_pull(skb, L2CAP_ENH_CTRL_SIZE);
 }
}
