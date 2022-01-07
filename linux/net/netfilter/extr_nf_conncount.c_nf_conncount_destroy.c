
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conncount_data {int * root; int gc_work; } ;
struct net {int dummy; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int cancel_work_sync (int *) ;
 int destroy_tree (int *) ;
 int kfree (struct nf_conncount_data*) ;
 int nf_ct_netns_put (struct net*,unsigned int) ;

void nf_conncount_destroy(struct net *net, unsigned int family,
     struct nf_conncount_data *data)
{
 unsigned int i;

 cancel_work_sync(&data->gc_work);
 nf_ct_netns_put(net, family);

 for (i = 0; i < ARRAY_SIZE(data->root); ++i)
  destroy_tree(&data->root[i]);

 kfree(data);
}
