
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_sock_ops {int slab; int obj_size; int slab_name; } ;
struct proto {int slab_flags; int name; struct request_sock_ops* rsk_prot; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SLAB_ACCOUNT ;
 int kasprintf (int ,char*,int ) ;
 int kmem_cache_create (int ,int ,int ,int,int *) ;
 int pr_crit (char*,int ) ;

__attribute__((used)) static int req_prot_init(const struct proto *prot)
{
 struct request_sock_ops *rsk_prot = prot->rsk_prot;

 if (!rsk_prot)
  return 0;

 rsk_prot->slab_name = kasprintf(GFP_KERNEL, "request_sock_%s",
     prot->name);
 if (!rsk_prot->slab_name)
  return -ENOMEM;

 rsk_prot->slab = kmem_cache_create(rsk_prot->slab_name,
        rsk_prot->obj_size, 0,
        SLAB_ACCOUNT | prot->slab_flags,
        ((void*)0));

 if (!rsk_prot->slab) {
  pr_crit("%s: Can't create request sock SLAB cache!\n",
   prot->name);
  return -ENOMEM;
 }
 return 0;
}
