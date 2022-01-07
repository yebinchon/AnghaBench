
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_info {int * compr_cb; int * compr_cb_param; } ;
struct intel_sst_drv {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,int) ;
 struct intel_sst_drv* dev_get_drvdata (struct device*) ;
 struct stream_info* get_stream_info (struct intel_sst_drv*,unsigned int) ;
 int sst_free_stream (struct intel_sst_drv*,unsigned int) ;

__attribute__((used)) static int sst_cdev_close(struct device *dev, unsigned int str_id)
{
 int retval;
 struct stream_info *stream;
 struct intel_sst_drv *ctx = dev_get_drvdata(dev);

 stream = get_stream_info(ctx, str_id);
 if (!stream) {
  dev_err(dev, "stream info is NULL for str %d!!!\n", str_id);
  return -EINVAL;
 }

 retval = sst_free_stream(ctx, str_id);
 stream->compr_cb_param = ((void*)0);
 stream->compr_cb = ((void*)0);

 if (retval)
  dev_err(dev, "free stream returned err %d\n", retval);

 dev_dbg(dev, "End\n");
 return retval;
}
