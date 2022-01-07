
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_info {int dummy; } ;
struct intel_sst_drv {struct stream_info* streams; } ;


 scalar_t__ sst_validate_strid (struct intel_sst_drv*,int) ;

struct stream_info *get_stream_info(
  struct intel_sst_drv *sst_drv_ctx, int str_id)
{
 if (sst_validate_strid(sst_drv_ctx, str_id))
  return ((void*)0);
 return &sst_drv_ctx->streams[str_id];
}
