
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun8i_codec_analog_quirks {scalar_t__ has_mic2; scalar_t__ has_mbias; scalar_t__ has_lineout; scalar_t__ has_linein; scalar_t__ has_hmic; scalar_t__ has_headphone; } ;
struct snd_soc_component {struct device* dev; } ;
struct device {int dummy; } ;


 struct sun8i_codec_analog_quirks* of_device_get_match_data (struct device*) ;
 int sun8i_codec_add_headphone (struct snd_soc_component*) ;
 int sun8i_codec_add_hmic (struct snd_soc_component*) ;
 int sun8i_codec_add_linein (struct snd_soc_component*) ;
 int sun8i_codec_add_lineout (struct snd_soc_component*) ;
 int sun8i_codec_add_mbias (struct snd_soc_component*) ;
 int sun8i_codec_add_mic2 (struct snd_soc_component*) ;
 int sun8i_codec_analog_add_mixer (struct snd_soc_component*,struct sun8i_codec_analog_quirks const*) ;

__attribute__((used)) static int sun8i_codec_analog_cmpnt_probe(struct snd_soc_component *cmpnt)
{
 struct device *dev = cmpnt->dev;
 const struct sun8i_codec_analog_quirks *quirks;
 int ret;






 quirks = of_device_get_match_data(dev);


 ret = sun8i_codec_analog_add_mixer(cmpnt, quirks);
 if (ret)
  return ret;

 if (quirks->has_headphone) {
  ret = sun8i_codec_add_headphone(cmpnt);
  if (ret)
   return ret;
 }

 if (quirks->has_hmic) {
  ret = sun8i_codec_add_hmic(cmpnt);
  if (ret)
   return ret;
 }

 if (quirks->has_linein) {
  ret = sun8i_codec_add_linein(cmpnt);
  if (ret)
   return ret;
 }

 if (quirks->has_lineout) {
  ret = sun8i_codec_add_lineout(cmpnt);
  if (ret)
   return ret;
 }

 if (quirks->has_mbias) {
  ret = sun8i_codec_add_mbias(cmpnt);
  if (ret)
   return ret;
 }

 if (quirks->has_mic2) {
  ret = sun8i_codec_add_mic2(cmpnt);
  if (ret)
   return ret;
 }

 return 0;
}
