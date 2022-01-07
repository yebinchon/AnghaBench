
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int labels_used; } ;
struct net {TYPE_1__ ct; } ;


 int BIT_WORD (unsigned int) ;
 int ERANGE ;
 int NF_CT_LABELS_MAX_SIZE ;
 int nf_connlabels_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int nf_connlabels_get(struct net *net, unsigned int bits)
{
 if (BIT_WORD(bits) >= NF_CT_LABELS_MAX_SIZE / sizeof(long))
  return -ERANGE;

 spin_lock(&nf_connlabels_lock);
 net->ct.labels_used++;
 spin_unlock(&nf_connlabels_lock);

 return 0;
}
