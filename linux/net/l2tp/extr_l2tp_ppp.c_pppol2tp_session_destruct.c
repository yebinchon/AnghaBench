
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {struct l2tp_session* sk_user_data; int sk_write_queue; int sk_receive_queue; } ;
struct l2tp_session {scalar_t__ magic; } ;


 int BUG_ON (int) ;
 scalar_t__ L2TP_SESSION_MAGIC ;
 int l2tp_session_dec_refcount (struct l2tp_session*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static void pppol2tp_session_destruct(struct sock *sk)
{
 struct l2tp_session *session = sk->sk_user_data;

 skb_queue_purge(&sk->sk_receive_queue);
 skb_queue_purge(&sk->sk_write_queue);

 if (session) {
  sk->sk_user_data = ((void*)0);
  BUG_ON(session->magic != L2TP_SESSION_MAGIC);
  l2tp_session_dec_refcount(session);
 }
}
