
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {TYPE_1__* sk_prot; } ;
struct TYPE_2__ {int orphan_count; } ;


 int SOCK_DEAD ;
 int TCP_CLOSE ;
 int inet_csk_destroy_sock (struct sock*) ;
 int inet_ehash_insert (struct sock*,struct sock*) ;
 int inet_sk_set_state (struct sock*,int ) ;
 int percpu_counter_inc (int ) ;
 int sock_net (struct sock*) ;
 int sock_prot_inuse_add (int ,TYPE_1__*,int) ;
 int sock_set_flag (struct sock*,int ) ;

bool inet_ehash_nolisten(struct sock *sk, struct sock *osk)
{
 bool ok = inet_ehash_insert(sk, osk);

 if (ok) {
  sock_prot_inuse_add(sock_net(sk), sk->sk_prot, 1);
 } else {
  percpu_counter_inc(sk->sk_prot->orphan_count);
  inet_sk_set_state(sk, TCP_CLOSE);
  sock_set_flag(sk, SOCK_DEAD);
  inet_csk_destroy_sock(sk);
 }
 return ok;
}
