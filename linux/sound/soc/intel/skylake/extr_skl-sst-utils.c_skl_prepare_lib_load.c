
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sst_dsp {int dummy; } ;
struct skl_lib_info {TYPE_1__* fw; int name; } ;
struct skl_dev {scalar_t__ is_first_boot; int dev; struct sst_dsp* dsp; } ;
struct firmware {int size; int data; } ;
struct TYPE_3__ {int size; int data; } ;


 int dev_err (int ,char*,int ,int) ;
 int request_firmware (TYPE_1__**,int ,int ) ;
 int skl_dsp_strip_extended_manifest (struct firmware*) ;
 int snd_skl_parse_uuids (struct sst_dsp*,TYPE_1__*,unsigned int,int) ;

int skl_prepare_lib_load(struct skl_dev *skl, struct skl_lib_info *linfo,
  struct firmware *stripped_fw,
  unsigned int hdr_offset, int index)
{
 int ret;
 struct sst_dsp *dsp = skl->dsp;

 if (linfo->fw == ((void*)0)) {
  ret = request_firmware(&linfo->fw, linfo->name,
     skl->dev);
  if (ret < 0) {
   dev_err(skl->dev, "Request lib %s failed:%d\n",
    linfo->name, ret);
   return ret;
  }
 }

 if (skl->is_first_boot) {
  ret = snd_skl_parse_uuids(dsp, linfo->fw, hdr_offset, index);
  if (ret < 0)
   return ret;
 }

 stripped_fw->data = linfo->fw->data;
 stripped_fw->size = linfo->fw->size;
 skl_dsp_strip_extended_manifest(stripped_fw);

 return 0;
}
