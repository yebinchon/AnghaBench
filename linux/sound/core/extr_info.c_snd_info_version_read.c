
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_info_entry {int dummy; } ;
struct snd_info_buffer {int dummy; } ;
struct TYPE_2__ {int release; } ;


 TYPE_1__* init_utsname () ;
 int snd_iprintf (struct snd_info_buffer*,char*,int ) ;

__attribute__((used)) static void snd_info_version_read(struct snd_info_entry *entry, struct snd_info_buffer *buffer)
{
 snd_iprintf(buffer,
      "Advanced Linux Sound Architecture Driver Version k%s.\n",
      init_utsname()->release);
}
