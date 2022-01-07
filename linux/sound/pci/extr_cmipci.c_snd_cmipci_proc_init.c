
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmipci {int card; } ;


 int snd_card_ro_proc_new (int ,char*,struct cmipci*,int ) ;
 int snd_cmipci_proc_read ;

__attribute__((used)) static void snd_cmipci_proc_init(struct cmipci *cm)
{
 snd_card_ro_proc_new(cm->card, "cmipci", cm, snd_cmipci_proc_read);
}
