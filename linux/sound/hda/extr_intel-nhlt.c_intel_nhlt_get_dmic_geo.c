
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct nhlt_vendor_dmic_array_config {unsigned int nb_mics; } ;
struct TYPE_2__ {scalar_t__ caps; } ;
struct nhlt_endpoint {scalar_t__ linktype; int length; TYPE_1__ config; } ;
struct nhlt_dmic_array_config {int array_type; } ;
struct nhlt_acpi_table {scalar_t__ endpoint_count; scalar_t__ desc; } ;
struct device {int dummy; } ;


 unsigned int MIC_ARRAY_2CH ;
 unsigned int MIC_ARRAY_4CH ;
 scalar_t__ NHLT_LINK_DMIC ;






 int dev_warn (struct device*,char*,int) ;

int intel_nhlt_get_dmic_geo(struct device *dev, struct nhlt_acpi_table *nhlt)
{
 struct nhlt_endpoint *epnt;
 struct nhlt_dmic_array_config *cfg;
 struct nhlt_vendor_dmic_array_config *cfg_vendor;
 unsigned int dmic_geo = 0;
 u8 j;

 if (!nhlt)
  return 0;

 epnt = (struct nhlt_endpoint *)nhlt->desc;

 for (j = 0; j < nhlt->endpoint_count; j++) {
  if (epnt->linktype == NHLT_LINK_DMIC) {
   cfg = (struct nhlt_dmic_array_config *)
     (epnt->config.caps);
   switch (cfg->array_type) {
   case 132:
   case 133:
    dmic_geo = MIC_ARRAY_2CH;
    break;

   case 131:
   case 129:
   case 130:
    dmic_geo = MIC_ARRAY_4CH;
    break;
   case 128:
    cfg_vendor = (struct nhlt_vendor_dmic_array_config *)cfg;
    dmic_geo = cfg_vendor->nb_mics;
    break;
   default:
    dev_warn(dev, "undefined DMIC array_type 0x%0x\n",
      cfg->array_type);
   }
  }
  epnt = (struct nhlt_endpoint *)((u8 *)epnt + epnt->length);
 }

 return dmic_geo;
}
