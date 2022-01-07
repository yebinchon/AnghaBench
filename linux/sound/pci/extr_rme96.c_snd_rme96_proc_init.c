
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rme96 {int card; } ;


 int snd_card_ro_proc_new (int ,char*,struct rme96*,int ) ;
 int snd_rme96_proc_read ;

__attribute__((used)) static void snd_rme96_proc_init(struct rme96 *rme96)
{
 snd_card_ro_proc_new(rme96->card, "rme96", rme96, snd_rme96_proc_read);
}
