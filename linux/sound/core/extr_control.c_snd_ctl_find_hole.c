
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int dev; } ;


 int ENOMEM ;
 int dev_err (int ,char*) ;
 scalar_t__ snd_ctl_remove_numid_conflict (struct snd_card*,unsigned int) ;

__attribute__((used)) static int snd_ctl_find_hole(struct snd_card *card, unsigned int count)
{
 unsigned int iter = 100000;

 while (snd_ctl_remove_numid_conflict(card, count)) {
  if (--iter == 0) {

   dev_err(card->dev, "unable to allocate new control numid\n");
   return -ENOMEM;
  }
 }
 return 0;
}
