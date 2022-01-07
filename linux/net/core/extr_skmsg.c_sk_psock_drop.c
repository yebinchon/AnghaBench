
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_callback_lock; } ;
struct TYPE_2__ {scalar_t__ skb_parser; } ;
struct sk_psock {int rcu; TYPE_1__ progs; } ;


 int SK_PSOCK_TX_ENABLED ;
 int call_rcu (int *,int ) ;
 int rcu_assign_sk_user_data (struct sock*,int *) ;
 int sk_psock_clear_state (struct sk_psock*,int ) ;
 int sk_psock_cork_free (struct sk_psock*) ;
 int sk_psock_destroy ;
 int sk_psock_restore_proto (struct sock*,struct sk_psock*) ;
 int sk_psock_stop_strp (struct sock*,struct sk_psock*) ;
 int sk_psock_zap_ingress (struct sk_psock*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void sk_psock_drop(struct sock *sk, struct sk_psock *psock)
{
 sk_psock_cork_free(psock);
 sk_psock_zap_ingress(psock);

 write_lock_bh(&sk->sk_callback_lock);
 sk_psock_restore_proto(sk, psock);
 rcu_assign_sk_user_data(sk, ((void*)0));
 if (psock->progs.skb_parser)
  sk_psock_stop_strp(sk, psock);
 write_unlock_bh(&sk->sk_callback_lock);
 sk_psock_clear_state(psock, SK_PSOCK_TX_ENABLED);

 call_rcu(&psock->rcu, sk_psock_destroy);
}
