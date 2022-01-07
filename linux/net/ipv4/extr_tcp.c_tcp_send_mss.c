
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int MSG_OOB ;
 int tcp_current_mss (struct sock*) ;
 int tcp_xmit_size_goal (struct sock*,int,int) ;

__attribute__((used)) static int tcp_send_mss(struct sock *sk, int *size_goal, int flags)
{
 int mss_now;

 mss_now = tcp_current_mss(sk);
 *size_goal = tcp_xmit_size_goal(sk, mss_now, !(flags & MSG_OOB));

 return mss_now;
}
