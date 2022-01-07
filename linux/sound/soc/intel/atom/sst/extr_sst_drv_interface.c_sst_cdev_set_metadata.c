
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_info {unsigned int pipe_id; int task_id; } ;
struct snd_compr_metadata {int dummy; } ;
struct intel_sst_drv {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int IPC_CMD ;
 int IPC_IA_SET_STREAM_PARAMS_MRFLD ;
 int dev_dbg (struct device*,char*,unsigned int) ;
 struct intel_sst_drv* dev_get_drvdata (struct device*) ;
 struct stream_info* get_stream_info (struct intel_sst_drv*,unsigned int) ;
 int sst_prepare_and_post_msg (struct intel_sst_drv*,int ,int ,int ,unsigned int,int,struct snd_compr_metadata*,int *,int,int,int,int) ;

__attribute__((used)) static int sst_cdev_set_metadata(struct device *dev,
  unsigned int str_id, struct snd_compr_metadata *metadata)
{
 int retval = 0;
 struct stream_info *str_info;
 struct intel_sst_drv *ctx = dev_get_drvdata(dev);

 dev_dbg(dev, "set metadata for stream %d\n", str_id);

 str_info = get_stream_info(ctx, str_id);
 if (!str_info)
  return -EINVAL;

 dev_dbg(dev, "pipe id = %d\n", str_info->pipe_id);
 retval = sst_prepare_and_post_msg(ctx, str_info->task_id, IPC_CMD,
   IPC_IA_SET_STREAM_PARAMS_MRFLD, str_info->pipe_id,
   sizeof(*metadata), metadata, ((void*)0),
   1, 1, 1, 0);

 return retval;
}
