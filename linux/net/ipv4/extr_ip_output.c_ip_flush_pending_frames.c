
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_write_queue; } ;
struct TYPE_3__ {int base; } ;
struct TYPE_4__ {TYPE_1__ cork; } ;


 int __ip_flush_pending_frames (struct sock*,int *,int *) ;
 TYPE_2__* inet_sk (struct sock*) ;

void ip_flush_pending_frames(struct sock *sk)
{
 __ip_flush_pending_frames(sk, &sk->sk_write_queue, &inet_sk(sk)->cork.base);
}
