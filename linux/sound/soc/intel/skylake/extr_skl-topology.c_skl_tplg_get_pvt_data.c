
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_tplg_vendor_array {scalar_t__ size; } ;
struct TYPE_3__ {char* data; } ;
struct snd_soc_tplg_dapm_widget {TYPE_1__ priv; } ;
struct TYPE_4__ {int caps_size; int caps; } ;
struct skl_module_cfg {TYPE_2__ formats_config; } ;
struct skl_dev {int dummy; } ;
struct device {int dummy; } ;


 int SKL_TYPE_TUPLE ;
 int memcpy (int ,char*,int) ;
 int skl_tplg_get_desc_blocks (struct device*,struct snd_soc_tplg_vendor_array*) ;
 int skl_tplg_get_pvt_data_v4 (struct snd_soc_tplg_dapm_widget*,struct skl_dev*,struct device*,struct skl_module_cfg*) ;
 int skl_tplg_get_tokens (struct device*,char*,struct skl_dev*,struct skl_module_cfg*,int) ;
 scalar_t__ uuid_is_valid (char*) ;

__attribute__((used)) static int skl_tplg_get_pvt_data(struct snd_soc_tplg_dapm_widget *tplg_w,
    struct skl_dev *skl, struct device *dev,
    struct skl_module_cfg *mconfig)
{
 struct snd_soc_tplg_vendor_array *array;
 int num_blocks, block_size = 0, block_type, off = 0;
 char *data;
 int ret;





 if (uuid_is_valid((char *)tplg_w->priv.data))
  return skl_tplg_get_pvt_data_v4(tplg_w, skl, dev, mconfig);


 array = (struct snd_soc_tplg_vendor_array *)tplg_w->priv.data;
 ret = skl_tplg_get_desc_blocks(dev, array);
 if (ret < 0)
  return ret;
 num_blocks = ret;

 off += array->size;

 while (num_blocks > 0) {
  array = (struct snd_soc_tplg_vendor_array *)
    (tplg_w->priv.data + off);

  ret = skl_tplg_get_desc_blocks(dev, array);

  if (ret < 0)
   return ret;
  block_type = ret;
  off += array->size;

  array = (struct snd_soc_tplg_vendor_array *)
   (tplg_w->priv.data + off);

  ret = skl_tplg_get_desc_blocks(dev, array);

  if (ret < 0)
   return ret;
  block_size = ret;
  off += array->size;

  array = (struct snd_soc_tplg_vendor_array *)
   (tplg_w->priv.data + off);

  data = (tplg_w->priv.data + off);

  if (block_type == SKL_TYPE_TUPLE) {
   ret = skl_tplg_get_tokens(dev, data,
     skl, mconfig, block_size);

   if (ret < 0)
    return ret;

   --num_blocks;
  } else {
   if (mconfig->formats_config.caps_size > 0)
    memcpy(mconfig->formats_config.caps, data,
     mconfig->formats_config.caps_size);
   --num_blocks;
   ret = mconfig->formats_config.caps_size;
  }
  off += ret;
 }

 return 0;
}
