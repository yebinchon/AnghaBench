
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; int sk_sndbuf; int sk_wmem_alloc; } ;


 scalar_t__ TCP_LISTEN ;
 int refcount_read (int *) ;

__attribute__((used)) static int unix_writable(const struct sock *sk)
{
 return sk->sk_state != TCP_LISTEN &&
        (refcount_read(&sk->sk_wmem_alloc) << 2) <= sk->sk_sndbuf;
}
