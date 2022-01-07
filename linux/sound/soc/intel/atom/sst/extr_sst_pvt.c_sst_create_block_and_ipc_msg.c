
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sst_block {int dummy; } ;
struct ipc_post {int dummy; } ;
struct intel_sst_drv {int dummy; } ;


 int ENOMEM ;
 int kfree (struct ipc_post*) ;
 struct sst_block* sst_create_block (struct intel_sst_drv*,int ,int ) ;
 int sst_create_ipc_msg (struct ipc_post**,int) ;

int sst_create_block_and_ipc_msg(struct ipc_post **arg, bool large,
  struct intel_sst_drv *sst_drv_ctx, struct sst_block **block,
  u32 msg_id, u32 drv_id)
{
 int retval = 0;

 retval = sst_create_ipc_msg(arg, large);
 if (retval)
  return retval;
 *block = sst_create_block(sst_drv_ctx, msg_id, drv_id);
 if (*block == ((void*)0)) {
  kfree(*arg);
  return -ENOMEM;
 }
 return retval;
}
