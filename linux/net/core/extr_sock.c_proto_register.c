
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proto {int slab_flags; int * slab; int rsk_prot; TYPE_1__* twsk_prot; int node; int name; int usersize; int useroffset; int obj_size; } ;
struct TYPE_2__ {int * twsk_slab_name; int * twsk_slab; int twsk_obj_size; } ;


 int ENOBUFS ;
 int GFP_KERNEL ;
 int SLAB_ACCOUNT ;
 int SLAB_HWCACHE_ALIGN ;
 int assign_proto_idx (struct proto*) ;
 int * kasprintf (int ,char*,int ) ;
 int kfree (int *) ;
 int * kmem_cache_create (int *,int ,int ,int,int *) ;
 int * kmem_cache_create_usercopy (int ,int ,int ,int,int ,int ,int *) ;
 int kmem_cache_destroy (int *) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_crit (char*,int ) ;
 int proto_list ;
 int proto_list_mutex ;
 int req_prot_cleanup (int ) ;
 scalar_t__ req_prot_init (struct proto*) ;

int proto_register(struct proto *prot, int alloc_slab)
{
 int ret = -ENOBUFS;

 if (alloc_slab) {
  prot->slab = kmem_cache_create_usercopy(prot->name,
     prot->obj_size, 0,
     SLAB_HWCACHE_ALIGN | SLAB_ACCOUNT |
     prot->slab_flags,
     prot->useroffset, prot->usersize,
     ((void*)0));

  if (prot->slab == ((void*)0)) {
   pr_crit("%s: Can't create sock SLAB cache!\n",
    prot->name);
   goto out;
  }

  if (req_prot_init(prot))
   goto out_free_request_sock_slab;

  if (prot->twsk_prot != ((void*)0)) {
   prot->twsk_prot->twsk_slab_name = kasprintf(GFP_KERNEL, "tw_sock_%s", prot->name);

   if (prot->twsk_prot->twsk_slab_name == ((void*)0))
    goto out_free_request_sock_slab;

   prot->twsk_prot->twsk_slab =
    kmem_cache_create(prot->twsk_prot->twsk_slab_name,
        prot->twsk_prot->twsk_obj_size,
        0,
        SLAB_ACCOUNT |
        prot->slab_flags,
        ((void*)0));
   if (prot->twsk_prot->twsk_slab == ((void*)0))
    goto out_free_timewait_sock_slab_name;
  }
 }

 mutex_lock(&proto_list_mutex);
 ret = assign_proto_idx(prot);
 if (ret) {
  mutex_unlock(&proto_list_mutex);
  goto out_free_timewait_sock_slab_name;
 }
 list_add(&prot->node, &proto_list);
 mutex_unlock(&proto_list_mutex);
 return ret;

out_free_timewait_sock_slab_name:
 if (alloc_slab && prot->twsk_prot)
  kfree(prot->twsk_prot->twsk_slab_name);
out_free_request_sock_slab:
 if (alloc_slab) {
  req_prot_cleanup(prot->rsk_prot);

  kmem_cache_destroy(prot->slab);
  prot->slab = ((void*)0);
 }
out:
 return ret;
}
