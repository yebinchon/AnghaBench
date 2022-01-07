
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_intelhad {int dummy; } ;


 int AUD_HDMI_STATUS ;
 int AUD_HDMI_STATUSG_MASK_FUNCRST ;
 int had_write_register (struct snd_intelhad*,int ,int ) ;

__attribute__((used)) static void had_reset_audio(struct snd_intelhad *intelhaddata)
{
 had_write_register(intelhaddata, AUD_HDMI_STATUS,
      AUD_HDMI_STATUSG_MASK_FUNCRST);
 had_write_register(intelhaddata, AUD_HDMI_STATUS, 0);
}
