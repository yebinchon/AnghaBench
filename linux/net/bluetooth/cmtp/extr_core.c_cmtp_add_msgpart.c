
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct cmtp_session {struct sk_buff** reassembly; } ;


 int BT_DBG (char*,struct cmtp_session*,unsigned char const*,int) ;
 int BT_ERR (char*) ;
 int GFP_ATOMIC ;
 struct sk_buff* alloc_skb (int,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_copy_from_linear_data (struct sk_buff*,int ,scalar_t__) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int skb_put_data (struct sk_buff*,unsigned char const*,int) ;

__attribute__((used)) static inline void cmtp_add_msgpart(struct cmtp_session *session, int id, const unsigned char *buf, int count)
{
 struct sk_buff *skb = session->reassembly[id], *nskb;
 int size;

 BT_DBG("session %p buf %p count %d", session, buf, count);

 size = (skb) ? skb->len + count : count;

 nskb = alloc_skb(size, GFP_ATOMIC);
 if (!nskb) {
  BT_ERR("Can't allocate memory for CAPI message");
  return;
 }

 if (skb && (skb->len > 0))
  skb_copy_from_linear_data(skb, skb_put(nskb, skb->len), skb->len);

 skb_put_data(nskb, buf, count);

 session->reassembly[id] = nskb;

 kfree_skb(skb);
}
