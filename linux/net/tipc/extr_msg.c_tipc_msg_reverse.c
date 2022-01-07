
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;


 int BASIC_H_SIZE ;
 int GFP_ATOMIC ;
 int MAX_FORWARD_SIZE ;
 int SHORT_H_SIZE ;
 int TIPC_ERR_OVERLOAD ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 int min_t (int ,int ,int ) ;
 scalar_t__ msg_data (struct tipc_msg*) ;
 int msg_data_sz (struct tipc_msg*) ;
 scalar_t__ msg_dest_droppable (struct tipc_msg*) ;
 int msg_destport (struct tipc_msg*) ;
 scalar_t__ msg_errcode (struct tipc_msg*) ;
 int msg_hdr_sz (struct tipc_msg*) ;
 scalar_t__ msg_is_syn (struct tipc_msg*) ;
 int msg_origport (struct tipc_msg*) ;
 int msg_prevnode (struct tipc_msg*) ;
 int msg_set_destnode (struct tipc_msg*,int ) ;
 int msg_set_destport (struct tipc_msg*,int ) ;
 int msg_set_errcode (struct tipc_msg*,int) ;
 int msg_set_hdr_sz (struct tipc_msg*,int) ;
 int msg_set_non_seq (struct tipc_msg*,int ) ;
 int msg_set_orignode (struct tipc_msg*,int ) ;
 int msg_set_origport (struct tipc_msg*,int ) ;
 int msg_set_prevnode (struct tipc_msg*,int ) ;
 int msg_set_size (struct tipc_msg*,int) ;
 scalar_t__ skb_linearize (struct sk_buff*) ;
 int skb_orphan (struct sk_buff*) ;
 struct sk_buff* tipc_buf_acquire (int,int ) ;
 int uint ;

bool tipc_msg_reverse(u32 own_node, struct sk_buff **skb, int err)
{
 struct sk_buff *_skb = *skb;
 struct tipc_msg *_hdr, *hdr;
 int hlen, dlen;

 if (skb_linearize(_skb))
  goto exit;
 _hdr = buf_msg(_skb);
 dlen = min_t(uint, msg_data_sz(_hdr), MAX_FORWARD_SIZE);
 hlen = msg_hdr_sz(_hdr);

 if (msg_dest_droppable(_hdr))
  goto exit;
 if (msg_errcode(_hdr))
  goto exit;


 if (hlen == SHORT_H_SIZE)
  hlen = BASIC_H_SIZE;


 if (msg_is_syn(_hdr) && err == TIPC_ERR_OVERLOAD)
  dlen = 0;


 *skb = tipc_buf_acquire(hlen + dlen, GFP_ATOMIC);
 if (!*skb)
  goto exit;
 memcpy((*skb)->data, _skb->data, msg_hdr_sz(_hdr));
 memcpy((*skb)->data + hlen, msg_data(_hdr), dlen);


 hdr = buf_msg(*skb);
 msg_set_hdr_sz(hdr, hlen);
 msg_set_errcode(hdr, err);
 msg_set_non_seq(hdr, 0);
 msg_set_origport(hdr, msg_destport(_hdr));
 msg_set_destport(hdr, msg_origport(_hdr));
 msg_set_destnode(hdr, msg_prevnode(_hdr));
 msg_set_prevnode(hdr, own_node);
 msg_set_orignode(hdr, own_node);
 msg_set_size(hdr, hlen + dlen);
 skb_orphan(_skb);
 kfree_skb(_skb);
 return 1;
exit:
 kfree_skb(_skb);
 *skb = ((void*)0);
 return 0;
}
