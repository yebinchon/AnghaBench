
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int labels_used; } ;
struct net {TYPE_1__ ct; } ;


 int nf_connlabels_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void nf_connlabels_put(struct net *net)
{
 spin_lock(&nf_connlabels_lock);
 net->ct.labels_used--;
 spin_unlock(&nf_connlabels_lock);
}
