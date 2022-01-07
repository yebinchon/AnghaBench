
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct gss_ctx {int mech_type; } ;
struct gss_api_mech {TYPE_1__* gm_ops; } ;
typedef int gfp_t ;
struct TYPE_2__ {int (* gss_import_sec_context ) (void const*,size_t,struct gss_ctx*,int *,int ) ;} ;


 int ENOMEM ;
 int gss_mech_get (struct gss_api_mech*) ;
 struct gss_ctx* kzalloc (int,int ) ;
 int stub1 (void const*,size_t,struct gss_ctx*,int *,int ) ;

int
gss_import_sec_context(const void *input_token, size_t bufsize,
         struct gss_api_mech *mech,
         struct gss_ctx **ctx_id,
         time_t *endtime,
         gfp_t gfp_mask)
{
 if (!(*ctx_id = kzalloc(sizeof(**ctx_id), gfp_mask)))
  return -ENOMEM;
 (*ctx_id)->mech_type = gss_mech_get(mech);

 return mech->gm_ops->gss_import_sec_context(input_token, bufsize,
      *ctx_id, endtime, gfp_mask);
}
