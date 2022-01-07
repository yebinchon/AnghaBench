
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_compr {int card; } ;


 int snd_card_free (int ) ;

__attribute__((used)) static int snd_compress_remove_device(struct snd_compr *device)
{
 return snd_card_free(device->card);
}
