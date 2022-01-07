
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int dummy; } ;
struct platform_device {int dummy; } ;


 int arndale_put_of_nodes (struct snd_soc_card*) ;
 struct snd_soc_card* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int arndale_audio_remove(struct platform_device *pdev)
{
 struct snd_soc_card *card = platform_get_drvdata(pdev);

 arndale_put_of_nodes(card);
 return 0;
}
