
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int devm_snd_soc_register_component (int *,int *,int ,int ) ;
 int sh4_ssi_component ;
 int sh4_ssi_dai ;

__attribute__((used)) static int sh4_soc_dai_probe(struct platform_device *pdev)
{
 return devm_snd_soc_register_component(&pdev->dev, &sh4_ssi_component,
            sh4_ssi_dai,
            ARRAY_SIZE(sh4_ssi_dai));
}
