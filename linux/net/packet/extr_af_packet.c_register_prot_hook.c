
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int bind_lock; } ;


 int __register_prot_hook (struct sock*) ;
 int lockdep_assert_held_once (int *) ;
 TYPE_1__* pkt_sk (struct sock*) ;

__attribute__((used)) static void register_prot_hook(struct sock *sk)
{
 lockdep_assert_held_once(&pkt_sk(sk)->bind_lock);
 __register_prot_hook(sk);
}
