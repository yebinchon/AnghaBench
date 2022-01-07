
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sysctl_tstamp; } ;
struct net {TYPE_1__ ct; } ;


 int nf_ct_tstamp ;

void nf_conntrack_tstamp_pernet_init(struct net *net)
{
 net->ct.sysctl_tstamp = nf_ct_tstamp;
}
