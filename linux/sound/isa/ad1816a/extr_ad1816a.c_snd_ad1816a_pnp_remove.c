
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_card_link {int dummy; } ;


 int pnp_get_card_drvdata (struct pnp_card_link*) ;
 int pnp_set_card_drvdata (struct pnp_card_link*,int *) ;
 int snd_card_free (int ) ;

__attribute__((used)) static void snd_ad1816a_pnp_remove(struct pnp_card_link *pcard)
{
 snd_card_free(pnp_get_card_drvdata(pcard));
 pnp_set_card_drvdata(pcard, ((void*)0));
}
