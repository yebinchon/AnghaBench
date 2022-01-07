
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_substream {scalar_t__ stream; struct snd_rawmidi_runtime* runtime; } ;
struct snd_rawmidi_runtime {int avail_min; scalar_t__ hw_ptr; scalar_t__ appl_ptr; int buffer; scalar_t__ buffer_size; scalar_t__ avail; int * event; int event_work; int sleep; int lock; struct snd_rawmidi_substream* substream; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ SNDRV_RAWMIDI_STREAM_INPUT ;
 int init_waitqueue_head (int *) ;
 int kfree (struct snd_rawmidi_runtime*) ;
 int kvzalloc (scalar_t__,int ) ;
 struct snd_rawmidi_runtime* kzalloc (int,int ) ;
 int snd_rawmidi_input_event_work ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int snd_rawmidi_runtime_create(struct snd_rawmidi_substream *substream)
{
 struct snd_rawmidi_runtime *runtime;

 runtime = kzalloc(sizeof(*runtime), GFP_KERNEL);
 if (!runtime)
  return -ENOMEM;
 runtime->substream = substream;
 spin_lock_init(&runtime->lock);
 init_waitqueue_head(&runtime->sleep);
 INIT_WORK(&runtime->event_work, snd_rawmidi_input_event_work);
 runtime->event = ((void*)0);
 runtime->buffer_size = PAGE_SIZE;
 runtime->avail_min = 1;
 if (substream->stream == SNDRV_RAWMIDI_STREAM_INPUT)
  runtime->avail = 0;
 else
  runtime->avail = runtime->buffer_size;
 runtime->buffer = kvzalloc(runtime->buffer_size, GFP_KERNEL);
 if (!runtime->buffer) {
  kfree(runtime);
  return -ENOMEM;
 }
 runtime->appl_ptr = runtime->hw_ptr = 0;
 substream->runtime = runtime;
 return 0;
}
