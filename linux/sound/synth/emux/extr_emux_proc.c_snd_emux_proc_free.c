
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emux {int * proc; } ;


 int snd_info_free_entry (int *) ;

void snd_emux_proc_free(struct snd_emux *emu)
{
 snd_info_free_entry(emu->proc);
 emu->proc = ((void*)0);
}
