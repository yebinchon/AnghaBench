
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_ack_backlog; } ;
struct TYPE_2__ {struct sock* parent; int accept_q; } ;


 int BT_DBG (char*,struct sock*,struct sock*) ;
 int SINGLE_DEPTH_NESTING ;
 int bh_lock_sock_nested (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 TYPE_1__* bt_sk (struct sock*) ;
 int list_add_tail (int *,int *) ;
 int lock_sock_nested (struct sock*,int ) ;
 int release_sock (struct sock*) ;
 int sock_hold (struct sock*) ;

void bt_accept_enqueue(struct sock *parent, struct sock *sk, bool bh)
{
 BT_DBG("parent %p, sk %p", parent, sk);

 sock_hold(sk);

 if (bh)
  bh_lock_sock_nested(sk);
 else
  lock_sock_nested(sk, SINGLE_DEPTH_NESTING);

 list_add_tail(&bt_sk(sk)->accept_q, &bt_sk(parent)->accept_q);
 bt_sk(sk)->parent = parent;

 if (bh)
  bh_unlock_sock(sk);
 else
  release_sock(sk);

 parent->sk_ack_backlog++;
}
