
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct inet_bind_bucket {int owners; } ;
struct TYPE_4__ {struct inet_bind_bucket* icsk_bind_hash; } ;
struct TYPE_3__ {unsigned short inet_num; } ;


 TYPE_2__* inet_csk (struct sock*) ;
 TYPE_1__* inet_sk (struct sock*) ;
 int sk_add_bind_node (struct sock*,int *) ;

void inet_bind_hash(struct sock *sk, struct inet_bind_bucket *tb,
      const unsigned short snum)
{
 inet_sk(sk)->inet_num = snum;
 sk_add_bind_node(sk, &tb->owners);
 inet_csk(sk)->icsk_bind_hash = tb;
}
