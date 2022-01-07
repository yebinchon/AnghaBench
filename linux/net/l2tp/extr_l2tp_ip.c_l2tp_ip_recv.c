
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sock {int dummy; } ;
struct sk_buff {unsigned char* data; int len; int dev; } ;
struct net {int dummy; } ;
struct l2tp_tunnel {int debug; int name; } ;
struct l2tp_session {struct l2tp_tunnel* tunnel; } ;
struct iphdr {int saddr; int daddr; } ;
typedef int __be32 ;


 int DUMP_PREFIX_OFFSET ;
 int L2TP_MSG_DATA ;
 int XFRM_POLICY_IN ;
 struct sock* __l2tp_ip_bind_lookup (struct net*,int ,int ,int ,scalar_t__) ;
 int __skb_pull (struct sk_buff*,int) ;
 struct net* dev_net (int ) ;
 int inet_iif (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int l2tp_ip_lock ;
 int l2tp_recv_common (struct l2tp_session*,struct sk_buff*,unsigned char*,unsigned char*,int ,int ) ;
 int l2tp_session_dec_refcount (struct l2tp_session*) ;
 struct l2tp_session* l2tp_session_get (struct net*,scalar_t__) ;
 scalar_t__ l2tp_v3_ensure_opt_in_linear (struct l2tp_session*,struct sk_buff*,unsigned char**,unsigned char**) ;
 int min (unsigned int,int ) ;
 int nf_reset_ct (struct sk_buff*) ;
 scalar_t__ ntohl (int ) ;
 int pr_debug (char*,int ) ;
 int print_hex_dump_bytes (char*,int ,unsigned char*,int) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int sk_receive_skb (struct sock*,struct sk_buff*,int) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;
 int sock_hold (struct sock*) ;
 int sock_put (struct sock*) ;
 int xfrm4_policy_check (struct sock*,int ,struct sk_buff*) ;

__attribute__((used)) static int l2tp_ip_recv(struct sk_buff *skb)
{
 struct net *net = dev_net(skb->dev);
 struct sock *sk;
 u32 session_id;
 u32 tunnel_id;
 unsigned char *ptr, *optr;
 struct l2tp_session *session;
 struct l2tp_tunnel *tunnel = ((void*)0);
 struct iphdr *iph;
 int length;

 if (!pskb_may_pull(skb, 4))
  goto discard;


 optr = ptr = skb->data;
 session_id = ntohl(*((__be32 *) ptr));
 ptr += 4;





 if (session_id == 0) {
  __skb_pull(skb, 4);
  goto pass_up;
 }


 session = l2tp_session_get(net, session_id);
 if (!session)
  goto discard;

 tunnel = session->tunnel;
 if (!tunnel)
  goto discard_sess;


 if (tunnel->debug & L2TP_MSG_DATA) {
  length = min(32u, skb->len);
  if (!pskb_may_pull(skb, length))
   goto discard_sess;


  optr = ptr = skb->data;
  ptr += 4;
  pr_debug("%s: ip recv\n", tunnel->name);
  print_hex_dump_bytes("", DUMP_PREFIX_OFFSET, ptr, length);
 }

 if (l2tp_v3_ensure_opt_in_linear(session, skb, &ptr, &optr))
  goto discard_sess;

 l2tp_recv_common(session, skb, ptr, optr, 0, skb->len);
 l2tp_session_dec_refcount(session);

 return 0;

pass_up:

 if (!pskb_may_pull(skb, 12))
  goto discard;

 if ((skb->data[0] & 0xc0) != 0xc0)
  goto discard;

 tunnel_id = ntohl(*(__be32 *) &skb->data[4]);
 iph = (struct iphdr *)skb_network_header(skb);

 read_lock_bh(&l2tp_ip_lock);
 sk = __l2tp_ip_bind_lookup(net, iph->daddr, iph->saddr, inet_iif(skb),
       tunnel_id);
 if (!sk) {
  read_unlock_bh(&l2tp_ip_lock);
  goto discard;
 }
 sock_hold(sk);
 read_unlock_bh(&l2tp_ip_lock);

 if (!xfrm4_policy_check(sk, XFRM_POLICY_IN, skb))
  goto discard_put;

 nf_reset_ct(skb);

 return sk_receive_skb(sk, skb, 1);

discard_sess:
 l2tp_session_dec_refcount(session);
 goto discard;

discard_put:
 sock_put(sk);

discard:
 kfree_skb(skb);
 return 0;
}
