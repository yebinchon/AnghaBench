
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_tegra {int hda_clk; int hda2codec_2x_clk; int hda2hdmi_clk; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void hda_tegra_disable_clocks(struct hda_tegra *data)
{
 clk_disable_unprepare(data->hda2hdmi_clk);
 clk_disable_unprepare(data->hda2codec_2x_clk);
 clk_disable_unprepare(data->hda_clk);
}
