
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_entry {struct snd_efw* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct snd_efw {int dummy; } ;
typedef enum snd_efw_clock_source { ____Placeholder_snd_efw_clock_source } snd_efw_clock_source ;


 scalar_t__ snd_efw_command_get_clock_source (struct snd_efw*,int*) ;
 scalar_t__ snd_efw_command_get_sampling_rate (struct snd_efw*,unsigned int*) ;
 int snd_iprintf (struct snd_info_buffer*,char*,unsigned int) ;

__attribute__((used)) static void
proc_read_clock(struct snd_info_entry *entry, struct snd_info_buffer *buffer)
{
 struct snd_efw *efw = entry->private_data;
 enum snd_efw_clock_source clock_source;
 unsigned int sampling_rate;

 if (snd_efw_command_get_clock_source(efw, &clock_source) < 0)
  return;

 if (snd_efw_command_get_sampling_rate(efw, &sampling_rate) < 0)
  return;

 snd_iprintf(buffer, "Clock Source: %d\n", clock_source);
 snd_iprintf(buffer, "Sampling Rate: %d\n", sampling_rate);
}
