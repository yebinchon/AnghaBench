
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int dummy; } ;
struct snd_ca0106 {struct snd_card* card; } ;



__attribute__((used)) static struct snd_card *ca0106_dev_id_card(void *dev_id)
{
 return ((struct snd_ca0106 *)dev_id)->card;
}
