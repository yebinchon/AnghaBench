
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_timewait_sock {scalar_t__ tw_md5_key; } ;
struct sock {int dummy; } ;


 int kfree_rcu (scalar_t__,int ) ;
 int rcu ;
 scalar_t__ static_branch_unlikely (int *) ;
 int tcp_md5_needed ;
 struct tcp_timewait_sock* tcp_twsk (struct sock*) ;

void tcp_twsk_destructor(struct sock *sk)
{
}
