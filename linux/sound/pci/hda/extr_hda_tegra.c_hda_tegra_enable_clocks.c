
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_tegra {int hda_clk; int hda2codec_2x_clk; int hda2hdmi_clk; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;

__attribute__((used)) static int hda_tegra_enable_clocks(struct hda_tegra *data)
{
 int rc;

 rc = clk_prepare_enable(data->hda_clk);
 if (rc)
  return rc;
 rc = clk_prepare_enable(data->hda2codec_2x_clk);
 if (rc)
  goto disable_hda;
 rc = clk_prepare_enable(data->hda2hdmi_clk);
 if (rc)
  goto disable_codec_2x;

 return 0;

disable_codec_2x:
 clk_disable_unprepare(data->hda2codec_2x_clk);
disable_hda:
 clk_disable_unprepare(data->hda_clk);
 return rc;
}
