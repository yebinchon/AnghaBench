
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* name; } ;
struct dlm_lock_resource {TYPE_1__ lockname; } ;
struct dlm_ctxt {int dummy; } ;


 int GFP_NOFS ;
 int dlm_init_lockres (struct dlm_ctxt*,struct dlm_lock_resource*,char const*,unsigned int) ;
 int dlm_lockname_cache ;
 int dlm_lockres_cache ;
 int kmem_cache_free (int ,struct dlm_lock_resource*) ;
 void* kmem_cache_zalloc (int ,int ) ;

struct dlm_lock_resource *dlm_new_lockres(struct dlm_ctxt *dlm,
       const char *name,
       unsigned int namelen)
{
 struct dlm_lock_resource *res = ((void*)0);

 res = kmem_cache_zalloc(dlm_lockres_cache, GFP_NOFS);
 if (!res)
  goto error;

 res->lockname.name = kmem_cache_zalloc(dlm_lockname_cache, GFP_NOFS);
 if (!res->lockname.name)
  goto error;

 dlm_init_lockres(dlm, res, name, namelen);
 return res;

error:
 if (res)
  kmem_cache_free(dlm_lockres_cache, res);
 return ((void*)0);
}
