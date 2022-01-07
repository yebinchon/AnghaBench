
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 long sk_wmem_alloc_get (struct sock*) ;

long unix_outq_len(struct sock *sk)
{
 return sk_wmem_alloc_get(sk);
}
