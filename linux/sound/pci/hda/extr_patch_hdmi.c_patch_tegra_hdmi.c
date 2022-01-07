
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int build_pcms; } ;
struct hda_codec {TYPE_1__ patch_ops; } ;


 int patch_generic_hdmi (struct hda_codec*) ;
 int tegra_hdmi_build_pcms ;

__attribute__((used)) static int patch_tegra_hdmi(struct hda_codec *codec)
{
 int err;

 err = patch_generic_hdmi(codec);
 if (err)
  return err;

 codec->patch_ops.build_pcms = tegra_hdmi_build_pcms;

 return 0;
}
