
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_info_entry {struct snd_ff* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct snd_ff {TYPE_2__* spec; } ;
struct TYPE_4__ {TYPE_1__* protocol; } ;
struct TYPE_3__ {int (* dump_status ) (struct snd_ff*,struct snd_info_buffer*) ;} ;


 int stub1 (struct snd_ff*,struct snd_info_buffer*) ;

__attribute__((used)) static void proc_dump_status(struct snd_info_entry *entry,
        struct snd_info_buffer *buffer)
{
 struct snd_ff *ff = entry->private_data;

 ff->spec->protocol->dump_status(ff, buffer);
}
