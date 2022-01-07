
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_sock {int dummy; } ;
struct sock {int dummy; } ;



__attribute__((used)) static inline struct xdp_sock *xdp_sk(struct sock *sk)
{
 return (struct xdp_sock *)sk;
}
