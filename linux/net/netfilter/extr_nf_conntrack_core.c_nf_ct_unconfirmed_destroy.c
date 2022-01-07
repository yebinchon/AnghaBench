
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; } ;
struct net {TYPE_1__ ct; } ;


 int __nf_ct_unconfirmed_destroy (struct net*) ;
 scalar_t__ atomic_read (int *) ;
 int might_sleep () ;
 int nf_queue_nf_hook_drop (struct net*) ;
 int synchronize_net () ;

void nf_ct_unconfirmed_destroy(struct net *net)
{
 might_sleep();

 if (atomic_read(&net->ct.count) > 0) {
  __nf_ct_unconfirmed_destroy(net);
  nf_queue_nf_hook_drop(net);
  synchronize_net();
 }
}
