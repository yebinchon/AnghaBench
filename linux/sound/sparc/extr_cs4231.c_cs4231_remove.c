
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs4231 {int card; } ;
struct platform_device {int dev; } ;


 struct snd_cs4231* dev_get_drvdata (int *) ;
 int snd_card_free (int ) ;

__attribute__((used)) static int cs4231_remove(struct platform_device *op)
{
 struct snd_cs4231 *chip = dev_get_drvdata(&op->dev);

 snd_card_free(chip->card);

 return 0;
}
