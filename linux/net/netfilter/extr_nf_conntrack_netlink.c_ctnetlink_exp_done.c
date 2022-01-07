
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_expect {int dummy; } ;
struct netlink_callback {scalar_t__* args; } ;


 int nf_ct_expect_put (struct nf_conntrack_expect*) ;

__attribute__((used)) static int ctnetlink_exp_done(struct netlink_callback *cb)
{
 if (cb->args[1])
  nf_ct_expect_put((struct nf_conntrack_expect *)cb->args[1]);
 return 0;
}
