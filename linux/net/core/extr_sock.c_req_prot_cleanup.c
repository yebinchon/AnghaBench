
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_sock_ops {int * slab; int * slab_name; } ;


 int kfree (int *) ;
 int kmem_cache_destroy (int *) ;

__attribute__((used)) static void req_prot_cleanup(struct request_sock_ops *rsk_prot)
{
 if (!rsk_prot)
  return;
 kfree(rsk_prot->slab_name);
 rsk_prot->slab_name = ((void*)0);
 kmem_cache_destroy(rsk_prot->slab);
 rsk_prot->slab = ((void*)0);
}
