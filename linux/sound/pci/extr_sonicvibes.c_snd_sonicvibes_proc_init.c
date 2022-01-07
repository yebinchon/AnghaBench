
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sonicvibes {int card; } ;


 int snd_card_ro_proc_new (int ,char*,struct sonicvibes*,int ) ;
 int snd_sonicvibes_proc_read ;

__attribute__((used)) static void snd_sonicvibes_proc_init(struct sonicvibes *sonic)
{
 snd_card_ro_proc_new(sonic->card, "sonicvibes", sonic,
        snd_sonicvibes_proc_read);
}
