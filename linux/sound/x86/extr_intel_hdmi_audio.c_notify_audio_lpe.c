
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_intelhad_card {struct snd_intelhad* pcm_ctx; } ;
struct snd_intelhad {int port; int hdmi_audio_wq; } ;
struct platform_device {int dummy; } ;


 struct snd_intelhad_card* platform_get_drvdata (struct platform_device*) ;
 int schedule_work (int *) ;
 scalar_t__ single_port ;

__attribute__((used)) static void notify_audio_lpe(struct platform_device *pdev, int port)
{
 struct snd_intelhad_card *card_ctx = platform_get_drvdata(pdev);
 struct snd_intelhad *ctx;

 ctx = &card_ctx->pcm_ctx[single_port ? 0 : port];
 if (single_port)
  ctx->port = port;

 schedule_work(&ctx->hdmi_audio_wq);
}
