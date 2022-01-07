
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcd9335_codec {int sido_ccl_cnt; int dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int WCD9335_SIDO_SIDO_CCL_10 ;
 int WCD9335_SIDO_SIDO_CCL_10_ICHARG_PWR_SEL_C320FF ;
 int WCD9335_SIDO_SIDO_CCL_DEF_VALUE ;
 int dev_err (int ,char*) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static void wcd9335_cdc_sido_ccl_enable(struct wcd9335_codec *wcd,
     bool ccl_flag)
{
 struct snd_soc_component *comp = wcd->component;

 if (ccl_flag) {
  if (++wcd->sido_ccl_cnt == 1)
   snd_soc_component_write(comp, WCD9335_SIDO_SIDO_CCL_10,
     WCD9335_SIDO_SIDO_CCL_DEF_VALUE);
 } else {
  if (wcd->sido_ccl_cnt == 0) {
   dev_err(wcd->dev, "sido_ccl already disabled\n");
   return;
  }
  if (--wcd->sido_ccl_cnt == 0)
   snd_soc_component_write(comp, WCD9335_SIDO_SIDO_CCL_10,
    WCD9335_SIDO_SIDO_CCL_10_ICHARG_PWR_SEL_C320FF);
 }
}
