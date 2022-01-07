
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl4 {int proc_entry; } ;


 int snd_info_free_entry (int ) ;

void snd_opl4_free_proc(struct snd_opl4 *opl4)
{
 snd_info_free_entry(opl4->proc_entry);
}
