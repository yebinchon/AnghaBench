
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {struct aaci* private_data; } ;
struct aaci {int base; } ;


 int iounmap (int ) ;

__attribute__((used)) static void aaci_free_card(struct snd_card *card)
{
 struct aaci *aaci = card->private_data;

 iounmap(aaci->base);
}
