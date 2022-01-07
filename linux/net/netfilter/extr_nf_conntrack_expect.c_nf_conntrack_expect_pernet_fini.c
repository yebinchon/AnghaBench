
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int exp_proc_remove (struct net*) ;

void nf_conntrack_expect_pernet_fini(struct net *net)
{
 exp_proc_remove(net);
}
