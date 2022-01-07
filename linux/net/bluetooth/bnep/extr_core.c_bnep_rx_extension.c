
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; scalar_t__ data; } ;
struct bnep_session {int dummy; } ;
struct bnep_ext_hdr {int type; int len; } ;



 int BNEP_EXT_HEADER ;
 int BNEP_TYPE_MASK ;
 int BT_DBG (char*,int,int) ;
 int EILSEQ ;
 int bnep_rx_control (struct bnep_session*,scalar_t__,int ) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static int bnep_rx_extension(struct bnep_session *s, struct sk_buff *skb)
{
 struct bnep_ext_hdr *h;
 int err = 0;

 do {
  h = (void *) skb->data;
  if (!skb_pull(skb, sizeof(*h))) {
   err = -EILSEQ;
   break;
  }

  BT_DBG("type 0x%x len %d", h->type, h->len);

  switch (h->type & BNEP_TYPE_MASK) {
  case 128:
   bnep_rx_control(s, skb->data, skb->len);
   break;

  default:

   break;
  }

  if (!skb_pull(skb, h->len)) {
   err = -EILSEQ;
   break;
  }
 } while (!err && (h->type & BNEP_EXT_HEADER));

 return err;
}
