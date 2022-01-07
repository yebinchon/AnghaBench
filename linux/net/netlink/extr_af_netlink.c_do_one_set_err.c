
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_err; int (* sk_error_report ) (struct sock*) ;} ;
struct netlink_sock {scalar_t__ portid; int ngroups; int flags; int groups; } ;
struct netlink_set_err_data {scalar_t__ portid; int group; scalar_t__ code; struct sock* exclude_sk; } ;


 scalar_t__ ENOBUFS ;
 int NETLINK_F_RECV_NO_ENOBUFS ;
 int net_eq (int ,int ) ;
 struct netlink_sock* nlk_sk (struct sock*) ;
 int sock_net (struct sock*) ;
 int stub1 (struct sock*) ;
 int test_bit (int,int ) ;

__attribute__((used)) static int do_one_set_err(struct sock *sk, struct netlink_set_err_data *p)
{
 struct netlink_sock *nlk = nlk_sk(sk);
 int ret = 0;

 if (sk == p->exclude_sk)
  goto out;

 if (!net_eq(sock_net(sk), sock_net(p->exclude_sk)))
  goto out;

 if (nlk->portid == p->portid || p->group - 1 >= nlk->ngroups ||
     !test_bit(p->group - 1, nlk->groups))
  goto out;

 if (p->code == ENOBUFS && nlk->flags & NETLINK_F_RECV_NO_ENOBUFS) {
  ret = 1;
  goto out;
 }

 sk->sk_err = p->code;
 sk->sk_error_report(sk);
out:
 return ret;
}
