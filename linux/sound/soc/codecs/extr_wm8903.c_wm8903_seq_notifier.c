
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8903_priv {int dcs_pending; int* dcs_cache; scalar_t__ class_w_users; } ;
struct snd_soc_component {int dev; } ;
typedef enum snd_soc_dapm_type { ____Placeholder_snd_soc_dapm_type } snd_soc_dapm_type ;


 int ARRAY_SIZE (int*) ;
 int WM8903_DCS_ENA_MASK ;
 int WM8903_DCS_MODE_MASK ;


 int WM8903_DC_SERVO_0 ;
 int WM8903_DC_SERVO_2 ;
 scalar_t__ WM8903_DC_SERVO_4 ;
 int WM8903_DC_SERVO_READBACK_1 ;
 int dev_dbg (int ,char*,int,...) ;
 int msleep (int) ;
 int pr_warn (char*,int) ;
 struct wm8903_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;
 int snd_soc_component_write (struct snd_soc_component*,scalar_t__,int) ;

__attribute__((used)) static void wm8903_seq_notifier(struct snd_soc_component *component,
    enum snd_soc_dapm_type event, int subseq)
{
 struct wm8903_priv *wm8903 = snd_soc_component_get_drvdata(component);
 int dcs_mode = 128;
 int i, val;


 if (wm8903->dcs_pending) {
  dev_dbg(component->dev, "Starting DC servo for %x\n",
   wm8903->dcs_pending);


  for (i = 0; i < ARRAY_SIZE(wm8903->dcs_cache); i++) {
   if (!(wm8903->dcs_pending & (1 << i)))
    continue;

   if (wm8903->dcs_cache[i]) {
    dev_dbg(component->dev,
     "Restore DC servo %d value %x\n",
     3 - i, wm8903->dcs_cache[i]);

    snd_soc_component_write(component, WM8903_DC_SERVO_4 + i,
           wm8903->dcs_cache[i] & 0xff);
   } else {
    dev_dbg(component->dev,
     "Calibrate DC servo %d\n", 3 - i);
    dcs_mode = 129;
   }
  }


  if (wm8903->class_w_users)
   dcs_mode = 129;

  snd_soc_component_update_bits(component, WM8903_DC_SERVO_2,
        WM8903_DCS_MODE_MASK, dcs_mode);

  snd_soc_component_update_bits(component, WM8903_DC_SERVO_0,
        WM8903_DCS_ENA_MASK, wm8903->dcs_pending);

  switch (dcs_mode) {
  case 128:
   break;

  case 129:
   msleep(270);


   if (wm8903->class_w_users)
    break;

   for (i = 0; i < ARRAY_SIZE(wm8903->dcs_cache); i++) {
    if (!(wm8903->dcs_pending & (1 << i)))
     continue;

    val = snd_soc_component_read32(component,
         WM8903_DC_SERVO_READBACK_1 + i);
    dev_dbg(component->dev, "DC servo %d: %x\n",
     3 - i, val);
    wm8903->dcs_cache[i] = val;
   }
   break;

  default:
   pr_warn("DCS mode %d delay not set\n", dcs_mode);
   break;
  }

  wm8903->dcs_pending = 0;
 }
}
