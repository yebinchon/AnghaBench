
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ecache_dwork; int sysctl_events; } ;
struct net {TYPE_1__ ct; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int ecache_work ;
 int nf_ct_events ;

void nf_conntrack_ecache_pernet_init(struct net *net)
{
 net->ct.sysctl_events = nf_ct_events;
 INIT_DELAYED_WORK(&net->ct.ecache_dwork, ecache_work);
}
