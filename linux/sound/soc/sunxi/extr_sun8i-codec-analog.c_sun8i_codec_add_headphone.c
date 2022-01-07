
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {struct device* dev; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int dev_err (struct device*,char*,int) ;
 int snd_soc_add_component_controls (struct snd_soc_component*,int ,int ) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int ,int ) ;
 int snd_soc_dapm_new_controls (struct snd_soc_dapm_context*,int ,int ) ;
 int sun8i_codec_headphone_controls ;
 int sun8i_codec_headphone_routes ;
 int sun8i_codec_headphone_widgets ;

__attribute__((used)) static int sun8i_codec_add_headphone(struct snd_soc_component *cmpnt)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(cmpnt);
 struct device *dev = cmpnt->dev;
 int ret;

 ret = snd_soc_add_component_controls(cmpnt,
          sun8i_codec_headphone_controls,
          ARRAY_SIZE(sun8i_codec_headphone_controls));
 if (ret) {
  dev_err(dev, "Failed to add Headphone controls: %d\n", ret);
  return ret;
 }

 ret = snd_soc_dapm_new_controls(dapm, sun8i_codec_headphone_widgets,
     ARRAY_SIZE(sun8i_codec_headphone_widgets));
 if (ret) {
  dev_err(dev, "Failed to add Headphone DAPM widgets: %d\n", ret);
  return ret;
 }

 ret = snd_soc_dapm_add_routes(dapm, sun8i_codec_headphone_routes,
          ARRAY_SIZE(sun8i_codec_headphone_routes));
 if (ret) {
  dev_err(dev, "Failed to add Headphone DAPM routes: %d\n", ret);
  return ret;
 }

 return 0;
}
