
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int caps_size; int caps; } ;
struct skl_module_cfg {TYPE_2__ formats_config; } ;
struct TYPE_3__ {int config_length; int config_data; } ;
struct skl_cpr_cfg {TYPE_1__ gtw_cfg; } ;


 int memcpy (int ,int ,int) ;

__attribute__((used)) static void skl_copy_copier_caps(struct skl_module_cfg *mconfig,
    struct skl_cpr_cfg *cpr_mconfig)
{
 if (mconfig->formats_config.caps_size == 0)
  return;

 memcpy(cpr_mconfig->gtw_cfg.config_data,
   mconfig->formats_config.caps,
   mconfig->formats_config.caps_size);

 cpr_mconfig->gtw_cfg.config_length =
   (mconfig->formats_config.caps_size) / 4;
}
