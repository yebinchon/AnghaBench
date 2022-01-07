
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct au1xpsc_audio_dmadata {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int au1xpsc_soc_component ;
 struct au1xpsc_audio_dmadata* devm_kcalloc (int *,int,int,int ) ;
 int devm_snd_soc_register_component (int *,int *,int *,int ) ;
 int platform_set_drvdata (struct platform_device*,struct au1xpsc_audio_dmadata*) ;

__attribute__((used)) static int au1xpsc_pcm_drvprobe(struct platform_device *pdev)
{
 struct au1xpsc_audio_dmadata *dmadata;

 dmadata = devm_kcalloc(&pdev->dev,
          2, sizeof(struct au1xpsc_audio_dmadata),
          GFP_KERNEL);
 if (!dmadata)
  return -ENOMEM;

 platform_set_drvdata(pdev, dmadata);

 return devm_snd_soc_register_component(&pdev->dev,
     &au1xpsc_soc_component, ((void*)0), 0);
}
