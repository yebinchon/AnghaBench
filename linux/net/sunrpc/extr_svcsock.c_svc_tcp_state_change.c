
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xpt_flags; } ;
struct svc_sock {TYPE_1__ sk_xprt; int (* sk_ostate ) (struct sock*) ;} ;
struct sock {scalar_t__ sk_state; scalar_t__ sk_user_data; } ;


 scalar_t__ TCP_ESTABLISHED ;
 int XPT_CLOSE ;
 int dprintk (char*,struct sock*,scalar_t__,scalar_t__) ;
 int printk (char*,struct sock*) ;
 int rmb () ;
 int set_bit (int ,int *) ;
 int stub1 (struct sock*) ;
 int svc_xprt_enqueue (TYPE_1__*) ;

__attribute__((used)) static void svc_tcp_state_change(struct sock *sk)
{
 struct svc_sock *svsk = (struct svc_sock *)sk->sk_user_data;

 dprintk("svc: socket %p TCP (connected) state change %d (svsk %p)\n",
  sk, sk->sk_state, sk->sk_user_data);

 if (!svsk)
  printk("svc: socket %p: no user data\n", sk);
 else {

  rmb();
  svsk->sk_ostate(sk);
  if (sk->sk_state != TCP_ESTABLISHED) {
   set_bit(XPT_CLOSE, &svsk->sk_xprt.xpt_flags);
   svc_xprt_enqueue(&svsk->sk_xprt);
  }
 }
}
