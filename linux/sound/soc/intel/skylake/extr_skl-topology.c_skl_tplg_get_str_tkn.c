
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_tplg_vendor_string_elem {int dummy; } ;
struct snd_soc_tplg_vendor_array {int num_elems; scalar_t__ value; } ;
struct skl_dev {int dummy; } ;
struct device {int dummy; } ;


 int skl_tplg_fill_str_mfest_tkn (struct device*,struct snd_soc_tplg_vendor_string_elem*,struct skl_dev*) ;

__attribute__((used)) static int skl_tplg_get_str_tkn(struct device *dev,
  struct snd_soc_tplg_vendor_array *array,
  struct skl_dev *skl)
{
 int tkn_count = 0, ret;
 struct snd_soc_tplg_vendor_string_elem *str_elem;

 str_elem = (struct snd_soc_tplg_vendor_string_elem *)array->value;
 while (tkn_count < array->num_elems) {
  ret = skl_tplg_fill_str_mfest_tkn(dev, str_elem, skl);
  str_elem++;

  if (ret < 0)
   return ret;

  tkn_count = tkn_count + ret;
 }

 return tkn_count;
}
