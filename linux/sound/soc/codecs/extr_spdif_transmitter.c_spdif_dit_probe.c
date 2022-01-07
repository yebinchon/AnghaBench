
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int dit_stub_dai ;
 int soc_codec_spdif_dit ;

__attribute__((used)) static int spdif_dit_probe(struct platform_device *pdev)
{
 return devm_snd_soc_register_component(&pdev->dev,
   &soc_codec_spdif_dit,
   &dit_stub_dai, 1);
}
