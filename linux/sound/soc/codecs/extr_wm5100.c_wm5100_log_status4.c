
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm5100_priv {int dev; } ;


 int WM5100_ADC_UNDERCLOCKED_EINT ;
 int WM5100_AIF1_ERR_EINT ;
 int WM5100_AIF1_UNDERCLOCKED_EINT ;
 int WM5100_AIF2_ERR_EINT ;
 int WM5100_AIF2_UNDERCLOCKED_EINT ;
 int WM5100_AIF3_ERR_EINT ;
 int WM5100_AIF3_UNDERCLOCKED_EINT ;
 int WM5100_ASRC_UNDERCLOCKED_EINT ;
 int WM5100_CTRLIF_ERR_EINT ;
 int WM5100_DAC_UNDERCLOCKED_EINT ;
 int WM5100_FX_UNDERCLOCKED_EINT ;
 int WM5100_ISRC1_UNDERCLOCKED_EINT ;
 int WM5100_ISRC2_UNDERCLOCKED_EINT ;
 int WM5100_MIXER_UNDERCLOCKED_EINT ;
 int dev_err (int ,char*) ;

__attribute__((used)) static void wm5100_log_status4(struct wm5100_priv *wm5100, int val)
{
 if (val & WM5100_AIF3_ERR_EINT)
  dev_err(wm5100->dev, "AIF3 configuration error\n");
 if (val & WM5100_AIF2_ERR_EINT)
  dev_err(wm5100->dev, "AIF2 configuration error\n");
 if (val & WM5100_AIF1_ERR_EINT)
  dev_err(wm5100->dev, "AIF1 configuration error\n");
 if (val & WM5100_CTRLIF_ERR_EINT)
  dev_err(wm5100->dev, "Control interface error\n");
 if (val & WM5100_ISRC2_UNDERCLOCKED_EINT)
  dev_err(wm5100->dev, "ISRC2 underclocked\n");
 if (val & WM5100_ISRC1_UNDERCLOCKED_EINT)
  dev_err(wm5100->dev, "ISRC1 underclocked\n");
 if (val & WM5100_FX_UNDERCLOCKED_EINT)
  dev_err(wm5100->dev, "FX underclocked\n");
 if (val & WM5100_AIF3_UNDERCLOCKED_EINT)
  dev_err(wm5100->dev, "AIF3 underclocked\n");
 if (val & WM5100_AIF2_UNDERCLOCKED_EINT)
  dev_err(wm5100->dev, "AIF2 underclocked\n");
 if (val & WM5100_AIF1_UNDERCLOCKED_EINT)
  dev_err(wm5100->dev, "AIF1 underclocked\n");
 if (val & WM5100_ASRC_UNDERCLOCKED_EINT)
  dev_err(wm5100->dev, "ASRC underclocked\n");
 if (val & WM5100_DAC_UNDERCLOCKED_EINT)
  dev_err(wm5100->dev, "DAC underclocked\n");
 if (val & WM5100_ADC_UNDERCLOCKED_EINT)
  dev_err(wm5100->dev, "ADC underclocked\n");
 if (val & WM5100_MIXER_UNDERCLOCKED_EINT)
  dev_err(wm5100->dev, "Mixer underclocked\n");
}
