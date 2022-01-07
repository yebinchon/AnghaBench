
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_tplg_vendor_string_elem {int token; int string; } ;
struct skl_dev {TYPE_1__* lib_info; int lib_count; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;

 int dev_err (struct device*,char*,int) ;
 int strncpy (int ,int ,int ) ;

__attribute__((used)) static int skl_tplg_fill_str_mfest_tkn(struct device *dev,
  struct snd_soc_tplg_vendor_string_elem *str_elem,
  struct skl_dev *skl)
{
 int tkn_count = 0;
 static int ref_count;

 switch (str_elem->token) {
 case 128:
  if (ref_count > skl->lib_count - 1) {
   ref_count = 0;
   return -EINVAL;
  }

  strncpy(skl->lib_info[ref_count].name,
   str_elem->string,
   ARRAY_SIZE(skl->lib_info[ref_count].name));
  ref_count++;
  break;

 default:
  dev_err(dev, "Not a string token %d\n", str_elem->token);
  break;
 }
 tkn_count++;

 return tkn_count;
}
