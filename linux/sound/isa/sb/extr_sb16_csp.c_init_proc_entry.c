
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sb_csp {TYPE_1__* chip; } ;
struct TYPE_2__ {int card; } ;


 int info_read ;
 int snd_card_ro_proc_new (int ,char*,struct snd_sb_csp*,int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int init_proc_entry(struct snd_sb_csp * p, int device)
{
 char name[16];

 sprintf(name, "cspD%d", device);
 snd_card_ro_proc_new(p->chip->card, name, p, info_read);
 return 0;
}
