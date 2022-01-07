
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_substream {int append; struct snd_rawmidi_runtime* runtime; } ;
struct snd_rawmidi_runtime {size_t avail; size_t avail_min; } ;



__attribute__((used)) static inline int snd_rawmidi_ready_append(struct snd_rawmidi_substream *substream,
        size_t count)
{
 struct snd_rawmidi_runtime *runtime = substream->runtime;

 return runtime->avail >= runtime->avail_min &&
        (!substream->append || runtime->avail >= count);
}
