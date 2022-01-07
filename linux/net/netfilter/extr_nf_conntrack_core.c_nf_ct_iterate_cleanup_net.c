
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int count; } ;
struct net {TYPE_1__ ct; } ;
struct iter_data {int (* iter ) (struct nf_conn*,void*) ;struct net* net; void* data; } ;


 scalar_t__ atomic_read (int *) ;
 int iter_net_only ;
 int might_sleep () ;
 int nf_ct_iterate_cleanup (int ,struct iter_data*,int ,int) ;

void nf_ct_iterate_cleanup_net(struct net *net,
          int (*iter)(struct nf_conn *i, void *data),
          void *data, u32 portid, int report)
{
 struct iter_data d;

 might_sleep();

 if (atomic_read(&net->ct.count) == 0)
  return;

 d.iter = iter;
 d.data = data;
 d.net = net;

 nf_ct_iterate_cleanup(iter_net_only, &d, portid, report);
}
