
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_akm4xxx {int name; int card; } ;


 int proc_regs_read ;
 int snd_card_ro_proc_new (int ,int ,struct snd_akm4xxx*,int ) ;

__attribute__((used)) static int proc_init(struct snd_akm4xxx *ak)
{
 return snd_card_ro_proc_new(ak->card, ak->name, ak, proc_regs_read);
}
