
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_substream {struct snd_rawmidi_runtime* runtime; } ;
struct snd_rawmidi_runtime {int buffer; } ;


 int kfree (struct snd_rawmidi_runtime*) ;
 int kvfree (int ) ;

__attribute__((used)) static int snd_rawmidi_runtime_free(struct snd_rawmidi_substream *substream)
{
 struct snd_rawmidi_runtime *runtime = substream->runtime;

 kvfree(runtime->buffer);
 kfree(runtime);
 substream->runtime = ((void*)0);
 return 0;
}
