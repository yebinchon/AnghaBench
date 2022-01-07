
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct sock {int dummy; } ;
struct nr_sock {struct sock sock; } ;
struct TYPE_2__ {int condition; } ;


 int NR_COND_PEER_RX_BUSY ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 struct nr_sock* from_timer (int ,struct timer_list*,int ) ;
 struct nr_sock* nr ;
 TYPE_1__* nr_sk (struct sock*) ;
 int t4timer ;

__attribute__((used)) static void nr_t4timer_expiry(struct timer_list *t)
{
 struct nr_sock *nr = from_timer(nr, t, t4timer);
 struct sock *sk = &nr->sock;

 bh_lock_sock(sk);
 nr_sk(sk)->condition &= ~NR_COND_PEER_RX_BUSY;
 bh_unlock_sock(sk);
}
