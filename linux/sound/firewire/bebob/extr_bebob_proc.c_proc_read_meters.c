
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_info_entry {struct snd_bebob* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct snd_bebob_meter_spec {int num; scalar_t__ (* get ) (struct snd_bebob*,int *,unsigned int) ;int * labels; } ;
struct snd_bebob {TYPE_1__* spec; } ;
struct TYPE_2__ {struct snd_bebob_meter_spec* meter; } ;


 int GFP_KERNEL ;
 int kfree (int *) ;
 int * kmalloc (unsigned int,int ) ;
 int snd_iprintf (struct snd_info_buffer*,char*,int ,int ,int ) ;
 scalar_t__ strcmp (int ,int ) ;
 scalar_t__ stub1 (struct snd_bebob*,int *,unsigned int) ;

__attribute__((used)) static void
proc_read_meters(struct snd_info_entry *entry,
   struct snd_info_buffer *buffer)
{
 struct snd_bebob *bebob = entry->private_data;
 const struct snd_bebob_meter_spec *spec = bebob->spec->meter;
 u32 *buf;
 unsigned int i, c, channels, size;

 if (spec == ((void*)0))
  return;

 channels = spec->num * 2;
 size = channels * sizeof(u32);
 buf = kmalloc(size, GFP_KERNEL);
 if (buf == ((void*)0))
  return;

 if (spec->get(bebob, buf, size) < 0)
  goto end;

 for (i = 0, c = 1; i < channels; i++) {
  snd_iprintf(buffer, "%s %d:\t%d\n",
       spec->labels[i / 2], c++, buf[i]);
  if ((i + 1 < channels - 1) &&
      (strcmp(spec->labels[i / 2],
       spec->labels[(i + 1) / 2]) != 0))
   c = 1;
 }
end:
 kfree(buf);
}
