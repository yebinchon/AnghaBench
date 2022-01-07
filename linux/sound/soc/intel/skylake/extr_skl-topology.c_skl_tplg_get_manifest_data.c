
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_tplg_vendor_array {scalar_t__ size; } ;
struct TYPE_2__ {char* data; } ;
struct snd_soc_tplg_manifest {TYPE_1__ priv; } ;
struct skl_dev {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int SKL_TYPE_TUPLE ;
 int skl_tplg_get_desc_blocks (struct device*,struct snd_soc_tplg_vendor_array*) ;
 int skl_tplg_get_manifest_tkn (struct device*,char*,struct skl_dev*,int) ;

__attribute__((used)) static int skl_tplg_get_manifest_data(struct snd_soc_tplg_manifest *manifest,
   struct device *dev, struct skl_dev *skl)
{
 struct snd_soc_tplg_vendor_array *array;
 int num_blocks, block_size = 0, block_type, off = 0;
 char *data;
 int ret;


 array = (struct snd_soc_tplg_vendor_array *)manifest->priv.data;
 ret = skl_tplg_get_desc_blocks(dev, array);
 if (ret < 0)
  return ret;
 num_blocks = ret;

 off += array->size;

 while (num_blocks > 0) {
  array = (struct snd_soc_tplg_vendor_array *)
    (manifest->priv.data + off);
  ret = skl_tplg_get_desc_blocks(dev, array);

  if (ret < 0)
   return ret;
  block_type = ret;
  off += array->size;

  array = (struct snd_soc_tplg_vendor_array *)
   (manifest->priv.data + off);

  ret = skl_tplg_get_desc_blocks(dev, array);

  if (ret < 0)
   return ret;
  block_size = ret;
  off += array->size;

  array = (struct snd_soc_tplg_vendor_array *)
   (manifest->priv.data + off);

  data = (manifest->priv.data + off);

  if (block_type == SKL_TYPE_TUPLE) {
   ret = skl_tplg_get_manifest_tkn(dev, data, skl,
     block_size);

   if (ret < 0)
    return ret;

   --num_blocks;
  } else {
   return -EINVAL;
  }
  off += ret;
 }

 return 0;
}
