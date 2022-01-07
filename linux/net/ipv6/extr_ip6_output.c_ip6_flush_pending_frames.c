
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_write_queue; } ;
struct TYPE_4__ {int cork; } ;
struct TYPE_3__ {int cork; } ;


 int __ip6_flush_pending_frames (struct sock*,int *,int *,int *) ;
 TYPE_2__* inet6_sk (struct sock*) ;
 TYPE_1__* inet_sk (struct sock*) ;

void ip6_flush_pending_frames(struct sock *sk)
{
 __ip6_flush_pending_frames(sk, &sk->sk_write_queue,
       &inet_sk(sk)->cork, &inet6_sk(sk)->cork);
}
