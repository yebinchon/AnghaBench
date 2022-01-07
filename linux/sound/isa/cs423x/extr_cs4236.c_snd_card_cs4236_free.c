
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card_cs4236 {int res_sb_port; } ;
struct snd_card {struct snd_card_cs4236* private_data; } ;


 int release_and_free_resource (int ) ;

__attribute__((used)) static void snd_card_cs4236_free(struct snd_card *card)
{
 struct snd_card_cs4236 *acard = card->private_data;

 release_and_free_resource(acard->res_sb_port);
}
