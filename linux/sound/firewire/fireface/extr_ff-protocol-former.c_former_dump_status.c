
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_buffer {int dummy; } ;
struct snd_ff {int dummy; } ;


 int dump_clock_config (struct snd_ff*,struct snd_info_buffer*) ;
 int dump_sync_status (struct snd_ff*,struct snd_info_buffer*) ;

__attribute__((used)) static void former_dump_status(struct snd_ff *ff,
          struct snd_info_buffer *buffer)
{
 dump_clock_config(ff, buffer);
 dump_sync_status(ff, buffer);
}
