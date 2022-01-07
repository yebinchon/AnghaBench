
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_miro {int res_mc_base; TYPE_1__* aci; int res_aci_port; } ;
struct snd_card {struct snd_miro* private_data; } ;
struct TYPE_2__ {scalar_t__ aci_port; } ;


 int release_and_free_resource (int ) ;

__attribute__((used)) static void snd_card_miro_free(struct snd_card *card)
{
 struct snd_miro *miro = card->private_data;

 release_and_free_resource(miro->res_aci_port);
 if (miro->aci)
  miro->aci->aci_port = 0;
 release_and_free_resource(miro->res_mc_base);
}
