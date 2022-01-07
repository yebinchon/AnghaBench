
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcd9335_codec {int sido_voltage; } ;
struct snd_soc_component {int dev; } ;


 int SIDO_VOLTAGE_NOMINAL_MV ;
 struct wcd9335_codec* dev_get_drvdata (int ) ;
 int wcd9335_cdc_req_mclk_enable (struct wcd9335_codec*,int) ;
 int wcd9335_codec_apply_sido_voltage (struct wcd9335_codec*,int ) ;
 int wcd9335_codec_update_sido_voltage (struct wcd9335_codec*,int ) ;

__attribute__((used)) static int _wcd9335_codec_enable_mclk(struct snd_soc_component *component,
          int enable)
{
 struct wcd9335_codec *wcd = dev_get_drvdata(component->dev);
 int ret;

 if (enable) {
  ret = wcd9335_cdc_req_mclk_enable(wcd, 1);
  if (ret)
   return ret;

  wcd9335_codec_apply_sido_voltage(wcd,
    SIDO_VOLTAGE_NOMINAL_MV);
 } else {
  wcd9335_codec_update_sido_voltage(wcd,
     wcd->sido_voltage);
  wcd9335_cdc_req_mclk_enable(wcd, 0);
 }

 return 0;
}
