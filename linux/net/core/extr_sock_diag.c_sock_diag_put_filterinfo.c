
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock_fprog_kern {int filter; } ;
struct sock {int sk_filter; } ;
struct sk_filter {TYPE_1__* prog; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {struct sock_fprog_kern* orig_prog; } ;


 int EMSGSIZE ;
 unsigned int bpf_classic_proglen (struct sock_fprog_kern*) ;
 int memcpy (int ,int ,unsigned int) ;
 int nla_data (struct nlattr*) ;
 struct nlattr* nla_reserve (struct sk_buff*,int,unsigned int) ;
 struct sk_filter* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int sock_diag_put_filterinfo(bool may_report_filterinfo, struct sock *sk,
        struct sk_buff *skb, int attrtype)
{
 struct sock_fprog_kern *fprog;
 struct sk_filter *filter;
 struct nlattr *attr;
 unsigned int flen;
 int err = 0;

 if (!may_report_filterinfo) {
  nla_reserve(skb, attrtype, 0);
  return 0;
 }

 rcu_read_lock();
 filter = rcu_dereference(sk->sk_filter);
 if (!filter)
  goto out;

 fprog = filter->prog->orig_prog;
 if (!fprog)
  goto out;

 flen = bpf_classic_proglen(fprog);

 attr = nla_reserve(skb, attrtype, flen);
 if (attr == ((void*)0)) {
  err = -EMSGSIZE;
  goto out;
 }

 memcpy(nla_data(attr), fprog->filter, flen);
out:
 rcu_read_unlock();
 return err;
}
