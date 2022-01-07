
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_intelhad {int dev; } ;


 int AUD_HDMI_STATUS ;
 int AUD_HDMI_STATUS_MASK_UNDERRUN ;
 int cond_resched () ;
 int dev_err (int ,char*) ;
 int had_read_register (struct snd_intelhad*,int ,int*) ;
 int had_write_register (struct snd_intelhad*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void wait_clear_underrun_bit(struct snd_intelhad *intelhaddata)
{
 int i;
 u32 val;

 for (i = 0; i < 100; i++) {

  had_read_register(intelhaddata, AUD_HDMI_STATUS, &val);
  if (!(val & AUD_HDMI_STATUS_MASK_UNDERRUN))
   return;
  udelay(100);
  cond_resched();
  had_write_register(intelhaddata, AUD_HDMI_STATUS, val);
 }
 dev_err(intelhaddata->dev, "Unable to clear UNDERRUN bits\n");
}
