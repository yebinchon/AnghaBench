
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {struct skl_dev* thread_context; } ;
struct skl_lib_info {int dummy; } ;
struct skl_dev {int * lib_info; } ;
struct firmware {int size; int data; } ;


 int SKL_ADSP_FW_BIN_HDR_OFFSET ;
 int skl_prepare_lib_load (struct skl_dev*,int *,struct firmware*,int ,int) ;
 int skl_release_library (struct skl_lib_info*,int) ;
 int skl_transfer_module (struct sst_dsp*,int ,int ,int ,int,int) ;

__attribute__((used)) static int
skl_load_library(struct sst_dsp *ctx, struct skl_lib_info *linfo, int lib_count)
{
 struct skl_dev *skl = ctx->thread_context;
 struct firmware stripped_fw;
 int ret, i;


 for (i = 1; i < lib_count; i++) {
  ret = skl_prepare_lib_load(skl, &skl->lib_info[i], &stripped_fw,
     SKL_ADSP_FW_BIN_HDR_OFFSET, i);
  if (ret < 0)
   goto load_library_failed;
  ret = skl_transfer_module(ctx, stripped_fw.data,
    stripped_fw.size, 0, i, 0);
  if (ret < 0)
   goto load_library_failed;
 }

 return 0;

load_library_failed:
 skl_release_library(linfo, lib_count);
 return ret;
}
