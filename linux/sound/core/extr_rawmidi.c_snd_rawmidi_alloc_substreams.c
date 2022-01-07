
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_substream {int stream; int number; int list; struct snd_rawmidi_str* pstr; struct snd_rawmidi* rmidi; } ;
struct snd_rawmidi_str {int substream_count; int substreams; } ;
struct snd_rawmidi {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct snd_rawmidi_substream* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static int snd_rawmidi_alloc_substreams(struct snd_rawmidi *rmidi,
     struct snd_rawmidi_str *stream,
     int direction,
     int count)
{
 struct snd_rawmidi_substream *substream;
 int idx;

 for (idx = 0; idx < count; idx++) {
  substream = kzalloc(sizeof(*substream), GFP_KERNEL);
  if (!substream)
   return -ENOMEM;
  substream->stream = direction;
  substream->number = idx;
  substream->rmidi = rmidi;
  substream->pstr = stream;
  list_add_tail(&substream->list, &stream->substreams);
  stream->substream_count++;
 }
 return 0;
}
