
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int * dev; } ;
struct platform_device {int dev; } ;


 int N_V253 ;
 int dev_warn (int *,char*) ;
 struct snd_soc_card* platform_get_drvdata (struct platform_device*) ;
 int snd_soc_unregister_card (struct snd_soc_card*) ;
 scalar_t__ tty_unregister_ldisc (int ) ;

__attribute__((used)) static int ams_delta_remove(struct platform_device *pdev)
{
 struct snd_soc_card *card = platform_get_drvdata(pdev);

 if (tty_unregister_ldisc(N_V253) != 0)
  dev_warn(&pdev->dev,
   "failed to unregister V253 line discipline\n");

 snd_soc_unregister_card(card);
 card->dev = ((void*)0);
 return 0;
}
