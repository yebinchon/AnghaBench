
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_to_snd_card (struct device*) ;
 int snd_card_do_free (int ) ;

__attribute__((used)) static void release_card_device(struct device *dev)
{
 snd_card_do_free(dev_to_snd_card(dev));
}
