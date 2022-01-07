
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct alchemy_pcm_ctx {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int alchemy_pcm_soc_component ;
 struct alchemy_pcm_ctx* devm_kzalloc (int *,int,int ) ;
 int devm_snd_soc_register_component (int *,int *,int *,int ) ;
 int platform_set_drvdata (struct platform_device*,struct alchemy_pcm_ctx*) ;

__attribute__((used)) static int alchemy_pcm_drvprobe(struct platform_device *pdev)
{
 struct alchemy_pcm_ctx *ctx;

 ctx = devm_kzalloc(&pdev->dev, sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 platform_set_drvdata(pdev, ctx);

 return devm_snd_soc_register_component(&pdev->dev,
     &alchemy_pcm_soc_component, ((void*)0), 0);
}
