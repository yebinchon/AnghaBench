
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_intelhad {int connected; } ;


 int AUD_HDMI_STATUS ;
 int HDMI_AUDIO_BUFFER_DONE ;
 int HDMI_AUDIO_UNDERRUN ;
 int had_read_register (struct snd_intelhad*,int ,int*) ;
 int had_write_register (struct snd_intelhad*,int ,int) ;

__attribute__((used)) static void had_ack_irqs(struct snd_intelhad *ctx)
{
 u32 status_reg;

 if (!ctx->connected)
  return;
 had_read_register(ctx, AUD_HDMI_STATUS, &status_reg);
 status_reg |= HDMI_AUDIO_BUFFER_DONE | HDMI_AUDIO_UNDERRUN;
 had_write_register(ctx, AUD_HDMI_STATUS, status_reg);
 had_read_register(ctx, AUD_HDMI_STATUS, &status_reg);
}
