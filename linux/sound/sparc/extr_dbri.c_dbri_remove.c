
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int private_data; } ;
struct platform_device {int dev; } ;


 struct snd_card* dev_get_drvdata (int *) ;
 int snd_card_free (struct snd_card*) ;
 int snd_dbri_free (int ) ;

__attribute__((used)) static int dbri_remove(struct platform_device *op)
{
 struct snd_card *card = dev_get_drvdata(&op->dev);

 snd_dbri_free(card->private_data);
 snd_card_free(card);

 return 0;
}
