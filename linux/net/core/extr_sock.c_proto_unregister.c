
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proto {TYPE_1__* twsk_prot; int rsk_prot; int * slab; int node; } ;
struct TYPE_2__ {int * twsk_slab; int twsk_slab_name; } ;


 int kfree (int ) ;
 int kmem_cache_destroy (int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int proto_list_mutex ;
 int release_proto_idx (struct proto*) ;
 int req_prot_cleanup (int ) ;

void proto_unregister(struct proto *prot)
{
 mutex_lock(&proto_list_mutex);
 release_proto_idx(prot);
 list_del(&prot->node);
 mutex_unlock(&proto_list_mutex);

 kmem_cache_destroy(prot->slab);
 prot->slab = ((void*)0);

 req_prot_cleanup(prot->rsk_prot);

 if (prot->twsk_prot != ((void*)0) && prot->twsk_prot->twsk_slab != ((void*)0)) {
  kmem_cache_destroy(prot->twsk_prot->twsk_slab);
  kfree(prot->twsk_prot->twsk_slab_name);
  prot->twsk_prot->twsk_slab = ((void*)0);
 }
}
