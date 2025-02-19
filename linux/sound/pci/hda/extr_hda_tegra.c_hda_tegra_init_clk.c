
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_tegra {void* hda2hdmi_clk; void* hda2codec_2x_clk; void* hda_clk; struct device* dev; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_err (struct device*,char*) ;
 void* devm_clk_get (struct device*,char*) ;

__attribute__((used)) static int hda_tegra_init_clk(struct hda_tegra *hda)
{
 struct device *dev = hda->dev;

 hda->hda_clk = devm_clk_get(dev, "hda");
 if (IS_ERR(hda->hda_clk)) {
  dev_err(dev, "failed to get hda clock\n");
  return PTR_ERR(hda->hda_clk);
 }
 hda->hda2codec_2x_clk = devm_clk_get(dev, "hda2codec_2x");
 if (IS_ERR(hda->hda2codec_2x_clk)) {
  dev_err(dev, "failed to get hda2codec_2x clock\n");
  return PTR_ERR(hda->hda2codec_2x_clk);
 }
 hda->hda2hdmi_clk = devm_clk_get(dev, "hda2hdmi");
 if (IS_ERR(hda->hda2hdmi_clk)) {
  dev_err(dev, "failed to get hda2hdmi clock\n");
  return PTR_ERR(hda->hda2hdmi_clk);
 }

 return 0;
}
