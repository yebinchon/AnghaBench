
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct inet_diag_msg {int idiag_wqueue; int idiag_rqueue; } ;


 int sk_rmem_alloc_get (struct sock*) ;
 int sk_wmem_alloc_get (struct sock*) ;

__attribute__((used)) static void raw_diag_get_info(struct sock *sk, struct inet_diag_msg *r,
         void *info)
{
 r->idiag_rqueue = sk_rmem_alloc_get(sk);
 r->idiag_wqueue = sk_wmem_alloc_get(sk);
}
