
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_state; int (* sk_data_ready ) (struct sock*) ;} ;
struct sk_buff {int dummy; } ;


 int TCP_SYN_RECV ;
 int __sk_add_backlog (struct sock*,struct sk_buff*) ;
 int bh_unlock_sock (struct sock*) ;
 int sk_mark_napi_id (struct sock*,struct sk_buff*) ;
 int sock_owned_by_user (struct sock*) ;
 int sock_put (struct sock*) ;
 int stub1 (struct sock*) ;
 int tcp_rcv_state_process (struct sock*,struct sk_buff*) ;
 int tcp_segs_in (int ,struct sk_buff*) ;
 int tcp_sk (struct sock*) ;

int tcp_child_process(struct sock *parent, struct sock *child,
        struct sk_buff *skb)
{
 int ret = 0;
 int state = child->sk_state;


 sk_mark_napi_id(child, skb);

 tcp_segs_in(tcp_sk(child), skb);
 if (!sock_owned_by_user(child)) {
  ret = tcp_rcv_state_process(child, skb);

  if (state == TCP_SYN_RECV && child->sk_state != state)
   parent->sk_data_ready(parent);
 } else {




  __sk_add_backlog(child, skb);
 }

 bh_unlock_sock(child);
 sock_put(child);
 return ret;
}
