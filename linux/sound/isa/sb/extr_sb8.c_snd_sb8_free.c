
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb8 {int fm_res; } ;
struct snd_card {struct snd_sb8* private_data; } ;


 int release_and_free_resource (int ) ;

__attribute__((used)) static void snd_sb8_free(struct snd_card *card)
{
 struct snd_sb8 *acard = card->private_data;

 if (acard == ((void*)0))
  return;
 release_and_free_resource(acard->fm_res);
}
