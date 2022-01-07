
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcd9335_codec {int dev; } ;
typedef enum wcd9335_sido_voltage { ____Placeholder_wcd9335_sido_voltage } wcd9335_sido_voltage ;


 int dev_err (int ,char*) ;
 int wcd9335_cdc_req_mclk_enable (struct wcd9335_codec*,int) ;
 int wcd9335_codec_apply_sido_voltage (struct wcd9335_codec*,int) ;

__attribute__((used)) static int wcd9335_codec_update_sido_voltage(struct wcd9335_codec *wcd,
          enum wcd9335_sido_voltage req_mv)
{
 int ret = 0;


 ret = wcd9335_cdc_req_mclk_enable(wcd, 1);
 if (ret) {
  dev_err(wcd->dev, "Ext clk enable failed\n");
  goto err;
 }

 wcd9335_codec_apply_sido_voltage(wcd, req_mv);
 wcd9335_cdc_req_mclk_enable(wcd, 0);

err:
 return ret;
}
