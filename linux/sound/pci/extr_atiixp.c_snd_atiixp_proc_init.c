
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atiixp {int card; } ;


 int snd_atiixp_proc_read ;
 int snd_card_ro_proc_new (int ,char*,struct atiixp*,int ) ;

__attribute__((used)) static void snd_atiixp_proc_init(struct atiixp *chip)
{
 snd_card_ro_proc_new(chip->card, "atiixp", chip, snd_atiixp_proc_read);
}
