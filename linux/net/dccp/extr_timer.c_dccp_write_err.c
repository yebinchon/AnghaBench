
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int (* sk_error_report ) (struct sock*) ;scalar_t__ sk_err_soft; int sk_err; } ;


 int DCCP_MIB_ABORTONTIMEOUT ;
 int DCCP_RESET_CODE_ABORTED ;
 int ETIMEDOUT ;
 int __DCCP_INC_STATS (int ) ;
 int dccp_done (struct sock*) ;
 int dccp_send_reset (struct sock*,int ) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void dccp_write_err(struct sock *sk)
{
 sk->sk_err = sk->sk_err_soft ? : ETIMEDOUT;
 sk->sk_error_report(sk);

 dccp_send_reset(sk, DCCP_RESET_CODE_ABORTED);
 dccp_done(sk);
 __DCCP_INC_STATS(DCCP_MIB_ABORTONTIMEOUT);
}
