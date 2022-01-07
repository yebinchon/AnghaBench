
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_sndbuf; int sk_wmem_alloc; } ;


 size_t refcount_read (int *) ;

__attribute__((used)) static inline int rxrpc_writable(struct sock *sk)
{
 return refcount_read(&sk->sk_wmem_alloc) < (size_t) sk->sk_sndbuf;
}
