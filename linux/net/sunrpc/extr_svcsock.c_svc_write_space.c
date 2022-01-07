
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xpt_flags; } ;
struct svc_sock {TYPE_1__ sk_xprt; int (* sk_owspace ) (struct sock*) ;} ;
struct sock {scalar_t__ sk_user_data; } ;


 int XPT_BUSY ;
 int dprintk (char*,struct svc_sock*,struct sock*,int ) ;
 int rmb () ;
 int stub1 (struct sock*) ;
 int svc_xprt_enqueue (TYPE_1__*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void svc_write_space(struct sock *sk)
{
 struct svc_sock *svsk = (struct svc_sock *)(sk->sk_user_data);

 if (svsk) {
  dprintk("svc: socket %p(inet %p), write_space busy=%d\n",
   svsk, sk, test_bit(XPT_BUSY, &svsk->sk_xprt.xpt_flags));


  rmb();
  svsk->sk_owspace(sk);
  svc_xprt_enqueue(&svsk->sk_xprt);
 }
}
