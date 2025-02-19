
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udphdr {int dummy; } ;
struct sock {int sk_state; } ;
struct sk_buff {int * data; } ;
struct ppp_channel {scalar_t__ private; } ;
struct l2tp_tunnel {scalar_t__ encap; } ;
struct l2tp_session {int hdr_len; struct l2tp_tunnel* tunnel; } ;
struct iphdr {int dummy; } ;


 scalar_t__ L2TP_ENCAPTYPE_UDP ;
 int NET_SKB_PAD ;
 int PPPOX_CONNECTED ;
 int PPP_ALLSTATIONS ;
 int PPP_UI ;
 int SOCK_DEAD ;
 int __skb_push (struct sk_buff*,int) ;
 int kfree_skb (struct sk_buff*) ;
 int l2tp_xmit_skb (struct l2tp_session*,struct sk_buff*,int) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 struct l2tp_session* pppol2tp_sock_to_session (struct sock*) ;
 scalar_t__ skb_cow_head (struct sk_buff*,int) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static int pppol2tp_xmit(struct ppp_channel *chan, struct sk_buff *skb)
{
 struct sock *sk = (struct sock *) chan->private;
 struct l2tp_session *session;
 struct l2tp_tunnel *tunnel;
 int uhlen, headroom;

 if (sock_flag(sk, SOCK_DEAD) || !(sk->sk_state & PPPOX_CONNECTED))
  goto abort;


 session = pppol2tp_sock_to_session(sk);
 if (session == ((void*)0))
  goto abort;

 tunnel = session->tunnel;

 uhlen = (tunnel->encap == L2TP_ENCAPTYPE_UDP) ? sizeof(struct udphdr) : 0;
 headroom = NET_SKB_PAD +
     sizeof(struct iphdr) +
     uhlen +
     session->hdr_len +
     2;
 if (skb_cow_head(skb, headroom))
  goto abort_put_sess;


 __skb_push(skb, 2);
 skb->data[0] = PPP_ALLSTATIONS;
 skb->data[1] = PPP_UI;

 local_bh_disable();
 l2tp_xmit_skb(session, skb, session->hdr_len);
 local_bh_enable();

 sock_put(sk);

 return 1;

abort_put_sess:
 sock_put(sk);
abort:

 kfree_skb(skb);
 return 1;
}
