
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int private_data; } ;


 int release_and_free_resource (int ) ;

__attribute__((used)) static void snd_adlib_free(struct snd_card *card)
{
 release_and_free_resource(card->private_data);
}
