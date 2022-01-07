
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct snd_sof_mod_hdr {size_t size; } ;
struct snd_sof_fw_header {int num_modules; } ;
struct snd_sof_dev {int dev; } ;
struct firmware {int size; scalar_t__ data; } ;
struct TYPE_2__ {int (* load_module ) (struct snd_sof_dev*,struct snd_sof_mod_hdr*) ;} ;


 int EINVAL ;
 int dev_err (int ,char*,...) ;
 TYPE_1__* sof_ops (struct snd_sof_dev*) ;

__attribute__((used)) static int load_modules(struct snd_sof_dev *sdev, const struct firmware *fw)
{
 struct snd_sof_fw_header *header;
 struct snd_sof_mod_hdr *module;
 int (*load_module)(struct snd_sof_dev *sof_dev,
      struct snd_sof_mod_hdr *hdr);
 int ret, count;
 size_t remaining;

 header = (struct snd_sof_fw_header *)fw->data;
 load_module = sof_ops(sdev)->load_module;
 if (!load_module)
  return -EINVAL;


 module = (struct snd_sof_mod_hdr *)((u8 *)(fw->data) + sizeof(*header));
 remaining = fw->size - sizeof(*header);

 if (remaining > fw->size) {
  dev_err(sdev->dev, "error: fw size smaller than header size\n");
  return -EINVAL;
 }

 for (count = 0; count < header->num_modules; count++) {

  if (remaining < sizeof(*module)) {
   dev_err(sdev->dev, "error: not enough data remaining\n");
   return -EINVAL;
  }


  remaining -= sizeof(*module);


  ret = load_module(sdev, module);
  if (ret < 0) {
   dev_err(sdev->dev, "error: invalid module %d\n", count);
   return ret;
  }

  if (remaining < module->size) {
   dev_err(sdev->dev, "error: not enough data remaining\n");
   return -EINVAL;
  }


  remaining -= module->size;
  module = (struct snd_sof_mod_hdr *)((u8 *)module
   + sizeof(*module) + module->size);
 }

 return 0;
}
