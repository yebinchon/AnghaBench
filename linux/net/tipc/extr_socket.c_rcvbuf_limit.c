
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_sock {int peer_caps; } ;
struct tipc_msg {int dummy; } ;
struct sock {int sk_rcvbuf; } ;
struct sk_buff {int dummy; } ;


 unsigned int FLOWCTL_MSG_LIM ;
 unsigned int READ_ONCE (int ) ;
 int TIPC_BLOCK_FLOWCTL ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 int msg_connected (struct tipc_msg*) ;
 unsigned int msg_importance (struct tipc_msg*) ;
 int msg_in_group (struct tipc_msg*) ;
 struct tipc_sock* tipc_sk (struct sock*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned int rcvbuf_limit(struct sock *sk, struct sk_buff *skb)
{
 struct tipc_sock *tsk = tipc_sk(sk);
 struct tipc_msg *hdr = buf_msg(skb);

 if (unlikely(msg_in_group(hdr)))
  return READ_ONCE(sk->sk_rcvbuf);

 if (unlikely(!msg_connected(hdr)))
  return READ_ONCE(sk->sk_rcvbuf) << msg_importance(hdr);

 if (likely(tsk->peer_caps & TIPC_BLOCK_FLOWCTL))
  return READ_ONCE(sk->sk_rcvbuf);

 return FLOWCTL_MSG_LIM;
}
