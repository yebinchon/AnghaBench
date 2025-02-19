
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_policy {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct sadb_msg {int sadb_msg_pid; int sadb_msg_seq; scalar_t__ sadb_msg_errno; int sadb_msg_type; int sadb_msg_version; } ;
struct TYPE_2__ {scalar_t__ byid; } ;
struct km_event {scalar_t__ event; int portid; int seq; TYPE_1__ data; } ;


 int BROADCAST_ALL ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PF_KEY_V2 ;
 int PTR_ERR (struct sk_buff*) ;
 int SADB_X_SPDDELETE2 ;
 scalar_t__ XFRM_MSG_DELPOLICY ;
 int event2poltype (scalar_t__) ;
 int kfree_skb (struct sk_buff*) ;
 int pfkey_broadcast (struct sk_buff*,int ,int ,int *,int ) ;
 int pfkey_xfrm_policy2msg (struct sk_buff*,struct xfrm_policy*,int) ;
 struct sk_buff* pfkey_xfrm_policy2msg_prep (struct xfrm_policy*) ;
 int xp_net (struct xfrm_policy*) ;

__attribute__((used)) static int key_notify_policy(struct xfrm_policy *xp, int dir, const struct km_event *c)
{
 struct sk_buff *out_skb;
 struct sadb_msg *out_hdr;
 int err;

 out_skb = pfkey_xfrm_policy2msg_prep(xp);
 if (IS_ERR(out_skb))
  return PTR_ERR(out_skb);

 err = pfkey_xfrm_policy2msg(out_skb, xp, dir);
 if (err < 0) {
  kfree_skb(out_skb);
  return err;
 }

 out_hdr = (struct sadb_msg *) out_skb->data;
 out_hdr->sadb_msg_version = PF_KEY_V2;

 if (c->data.byid && c->event == XFRM_MSG_DELPOLICY)
  out_hdr->sadb_msg_type = SADB_X_SPDDELETE2;
 else
  out_hdr->sadb_msg_type = event2poltype(c->event);
 out_hdr->sadb_msg_errno = 0;
 out_hdr->sadb_msg_seq = c->seq;
 out_hdr->sadb_msg_pid = c->portid;
 pfkey_broadcast(out_skb, GFP_ATOMIC, BROADCAST_ALL, ((void*)0), xp_net(xp));
 return 0;

}
