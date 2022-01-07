
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {int card; } ;


 int snd_card_ro_proc_new (int ,char*,struct snd_rme9652*,int ) ;
 int snd_rme9652_proc_read ;

__attribute__((used)) static void snd_rme9652_proc_init(struct snd_rme9652 *rme9652)
{
 snd_card_ro_proc_new(rme9652->card, "rme9652", rme9652,
        snd_rme9652_proc_read);
}
