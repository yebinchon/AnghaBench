
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sst_params {int dummy; } ;
struct snd_sst_lib_download {int dummy; } ;
struct intel_sst_drv {int dev; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* alloc_stream ) (struct intel_sst_drv*,struct snd_sst_params*) ;} ;


 int dev_dbg (int ,char*,int) ;
 int stub1 (struct intel_sst_drv*,struct snd_sst_params*) ;

int sst_get_stream_allocated(struct intel_sst_drv *ctx,
 struct snd_sst_params *str_param,
 struct snd_sst_lib_download **lib_dnld)
{
 int retval;

 retval = ctx->ops->alloc_stream(ctx, str_param);
 if (retval > 0)
  dev_dbg(ctx->dev, "Stream allocated %d\n", retval);
 return retval;

}
