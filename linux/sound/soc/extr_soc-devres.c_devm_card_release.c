
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int dummy; } ;
struct device {int dummy; } ;


 int snd_soc_unregister_card (struct snd_soc_card*) ;

__attribute__((used)) static void devm_card_release(struct device *dev, void *res)
{
 snd_soc_unregister_card(*(struct snd_soc_card **)res);
}
