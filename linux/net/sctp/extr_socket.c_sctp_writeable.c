
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_sndbuf; scalar_t__ sk_wmem_queued; } ;



__attribute__((used)) static bool sctp_writeable(struct sock *sk)
{
 return sk->sk_sndbuf > sk->sk_wmem_queued;
}
