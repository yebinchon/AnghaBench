
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sysctl_acct; } ;
struct net {TYPE_1__ ct; } ;


 int nf_ct_acct ;

void nf_conntrack_acct_pernet_init(struct net *net)
{
 net->ct.sysctl_acct = nf_ct_acct;
}
