
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_oxfw {int dummy; } ;
struct snd_card {struct snd_oxfw* private_data; } ;


 int snd_oxfw_stream_destroy_duplex (struct snd_oxfw*) ;

__attribute__((used)) static void oxfw_card_free(struct snd_card *card)
{
 struct snd_oxfw *oxfw = card->private_data;

 snd_oxfw_stream_destroy_duplex(oxfw);
}
