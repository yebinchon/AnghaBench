
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ecache_dwork; } ;
struct net {TYPE_1__ ct; } ;


 int cancel_delayed_work_sync (int *) ;

void nf_conntrack_ecache_pernet_fini(struct net *net)
{
 cancel_delayed_work_sync(&net->ct.ecache_dwork);
}
