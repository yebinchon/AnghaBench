
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expect_count; } ;
struct net {TYPE_1__ ct; } ;


 int exp_proc_init (struct net*) ;

int nf_conntrack_expect_pernet_init(struct net *net)
{
 net->ct.expect_count = 0;
 return exp_proc_init(net);
}
