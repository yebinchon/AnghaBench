
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_refcnt; } ;
struct TYPE_3__ {int inet_num; } ;


 TYPE_1__* inet_sk (struct sock*) ;
 int pr_debug (char*,TYPE_1__*,...) ;
 int refcount_read (int *) ;
 int sk_common_release (struct sock*) ;

void ping_close(struct sock *sk, long timeout)
{
 pr_debug("ping_close(sk=%p,sk->num=%u)\n",
   inet_sk(sk), inet_sk(sk)->inet_num);
 pr_debug("isk->refcnt = %d\n", refcount_read(&sk->sk_refcnt));

 sk_common_release(sk);
}
