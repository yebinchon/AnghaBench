
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct gss_ctx {TYPE_2__* mech_type; scalar_t__ internal_ctx_id; } ;
struct TYPE_4__ {TYPE_1__* gm_ops; } ;
struct TYPE_3__ {int (* gss_delete_sec_context ) (scalar_t__) ;} ;


 int GSS_S_COMPLETE ;
 int GSS_S_NO_CONTEXT ;
 int dprintk (char*,struct gss_ctx*) ;
 int gss_mech_put (TYPE_2__*) ;
 int kfree (struct gss_ctx*) ;
 int stub1 (scalar_t__) ;

u32
gss_delete_sec_context(struct gss_ctx **context_handle)
{
 dprintk("RPC:       gss_delete_sec_context deleting %p\n",
   *context_handle);

 if (!*context_handle)
  return GSS_S_NO_CONTEXT;
 if ((*context_handle)->internal_ctx_id)
  (*context_handle)->mech_type->gm_ops
   ->gss_delete_sec_context((*context_handle)
       ->internal_ctx_id);
 gss_mech_put((*context_handle)->mech_type);
 kfree(*context_handle);
 *context_handle=((void*)0);
 return GSS_S_COMPLETE;
}
