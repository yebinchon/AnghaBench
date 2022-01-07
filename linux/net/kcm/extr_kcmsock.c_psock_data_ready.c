
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_callback_lock; scalar_t__ sk_user_data; } ;
struct kcm_psock {int strp; } ;


 scalar_t__ likely (struct kcm_psock*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int strp_data_ready (int *) ;

__attribute__((used)) static void psock_data_ready(struct sock *sk)
{
 struct kcm_psock *psock;

 read_lock_bh(&sk->sk_callback_lock);

 psock = (struct kcm_psock *)sk->sk_user_data;
 if (likely(psock))
  strp_data_ready(&psock->strp);

 read_unlock_bh(&sk->sk_callback_lock);
}
