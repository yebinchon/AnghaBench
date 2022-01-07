
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_entry {int* name; struct loopback* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct loopback {int cable_lock; } ;


 int MAX_PCM_SUBSTREAMS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int print_substream_info (struct snd_info_buffer*,struct loopback*,int,int) ;
 int strlen (int*) ;

__attribute__((used)) static void print_cable_info(struct snd_info_entry *entry,
        struct snd_info_buffer *buffer)
{
 struct loopback *loopback = entry->private_data;
 int sub, num;

 mutex_lock(&loopback->cable_lock);
 num = entry->name[strlen(entry->name)-1];
 num = num == '0' ? 0 : 1;
 for (sub = 0; sub < MAX_PCM_SUBSTREAMS; sub++)
  print_substream_info(buffer, loopback, sub, num);
 mutex_unlock(&loopback->cable_lock);
}
