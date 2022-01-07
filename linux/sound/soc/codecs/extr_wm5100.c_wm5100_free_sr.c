
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm5100_priv {int * sr_ref; } ;
struct snd_soc_component {int dev; } ;


 int ARRAY_SIZE (int*) ;
 int WM5100_SAMPLE_RATE_1_MASK ;
 int dev_dbg (int ,char*,int,int ) ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*,int) ;
 struct wm5100_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int) ;
 int* wm5100_sr_code ;
 int* wm5100_sr_regs ;

__attribute__((used)) static void wm5100_free_sr(struct snd_soc_component *component, int rate)
{
 struct wm5100_priv *wm5100 = snd_soc_component_get_drvdata(component);
 int i, sr_code;

 for (i = 0; i < ARRAY_SIZE(wm5100_sr_code); i++)
  if (wm5100_sr_code[i] == rate)
   break;
 if (i == ARRAY_SIZE(wm5100_sr_code)) {
  dev_err(component->dev, "Unsupported sample rate: %dHz\n", rate);
  return;
 }
 sr_code = wm5100_sr_code[i];

 for (i = 0; i < ARRAY_SIZE(wm5100_sr_regs); i++) {
  if (!wm5100->sr_ref[i])
   continue;

  if ((snd_soc_component_read32(component, wm5100_sr_regs[i]) &
       WM5100_SAMPLE_RATE_1_MASK) == sr_code)
   break;
 }
 if (i < ARRAY_SIZE(wm5100_sr_regs)) {
  wm5100->sr_ref[i]--;
  dev_dbg(component->dev, "Dereference SR %dHz, count now %d\n",
   rate, wm5100->sr_ref[i]);
 } else {
  dev_warn(component->dev, "Freeing unreferenced sample rate %dHz\n",
    rate);
 }
}
