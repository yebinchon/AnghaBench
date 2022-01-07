
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int auto_assign_helper_warned; int sysctl_auto_assign_helper; } ;
struct net {TYPE_1__ ct; } ;


 int nf_ct_auto_assign_helper ;

void nf_conntrack_helper_pernet_init(struct net *net)
{
 net->ct.auto_assign_helper_warned = 0;
 net->ct.sysctl_auto_assign_helper = nf_ct_auto_assign_helper;
}
