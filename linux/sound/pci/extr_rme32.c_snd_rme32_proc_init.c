
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rme32 {int card; } ;


 int snd_card_ro_proc_new (int ,char*,struct rme32*,int ) ;
 int snd_rme32_proc_read ;

__attribute__((used)) static void snd_rme32_proc_init(struct rme32 *rme32)
{
 snd_card_ro_proc_new(rme32->card, "rme32", rme32, snd_rme32_proc_read);
}
