
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl4 {int access_mutex; int memory_access; } ;
struct snd_info_entry {struct snd_opl4* private_data; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int snd_opl4_mem_proc_release(struct snd_info_entry *entry,
         unsigned short mode, void *file_private_data)
{
 struct snd_opl4 *opl4 = entry->private_data;

 mutex_lock(&opl4->access_mutex);
 opl4->memory_access--;
 mutex_unlock(&opl4->access_mutex);
 return 0;
}
