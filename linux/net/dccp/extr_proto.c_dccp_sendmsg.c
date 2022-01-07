
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_state; TYPE_1__* sk_prot; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int msg_flags; } ;
struct dccp_sock {size_t dccps_mss_cache; int dccps_xmit_timer; } ;
struct TYPE_2__ {size_t max_header; } ;


 int DCCPF_OPEN ;
 int DCCPF_PARTOPEN ;
 int DCCP_CLOSED ;
 int EAGAIN ;
 int EMSGSIZE ;
 int ENOTCONN ;
 int const MSG_DONTWAIT ;
 int dccp_msghdr_parse (struct msghdr*,struct sk_buff*) ;
 scalar_t__ dccp_qpolicy_full (struct sock*) ;
 int dccp_qpolicy_push (struct sock*,struct sk_buff*) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 int dccp_write_xmit (struct sock*) ;
 int kfree_skb (struct sk_buff*) ;
 int lock_sock (struct sock*) ;
 int memcpy_from_msg (int ,struct msghdr*,size_t) ;
 int release_sock (struct sock*) ;
 int sk_stream_wait_connect (struct sock*,long*) ;
 int skb_put (struct sk_buff*,size_t) ;
 int skb_reserve (struct sk_buff*,size_t) ;
 struct sk_buff* sock_alloc_send_skb (struct sock*,int,int const,int*) ;
 long sock_sndtimeo (struct sock*,int const) ;
 int timer_pending (int *) ;
 int trace_dccp_probe (struct sock*,size_t) ;

int dccp_sendmsg(struct sock *sk, struct msghdr *msg, size_t len)
{
 const struct dccp_sock *dp = dccp_sk(sk);
 const int flags = msg->msg_flags;
 const int noblock = flags & MSG_DONTWAIT;
 struct sk_buff *skb;
 int rc, size;
 long timeo;

 trace_dccp_probe(sk, len);

 if (len > dp->dccps_mss_cache)
  return -EMSGSIZE;

 lock_sock(sk);

 if (dccp_qpolicy_full(sk)) {
  rc = -EAGAIN;
  goto out_release;
 }

 timeo = sock_sndtimeo(sk, noblock);






 if ((1 << sk->sk_state) & ~(DCCPF_OPEN | DCCPF_PARTOPEN))
  if ((rc = sk_stream_wait_connect(sk, &timeo)) != 0)
   goto out_release;

 size = sk->sk_prot->max_header + len;
 release_sock(sk);
 skb = sock_alloc_send_skb(sk, size, noblock, &rc);
 lock_sock(sk);
 if (skb == ((void*)0))
  goto out_release;

 if (sk->sk_state == DCCP_CLOSED) {
  rc = -ENOTCONN;
  goto out_discard;
 }

 skb_reserve(skb, sk->sk_prot->max_header);
 rc = memcpy_from_msg(skb_put(skb, len), msg, len);
 if (rc != 0)
  goto out_discard;

 rc = dccp_msghdr_parse(msg, skb);
 if (rc != 0)
  goto out_discard;

 dccp_qpolicy_push(sk, skb);





 if (!timer_pending(&dp->dccps_xmit_timer))
  dccp_write_xmit(sk);
out_release:
 release_sock(sk);
 return rc ? : len;
out_discard:
 kfree_skb(skb);
 goto out_release;
}
