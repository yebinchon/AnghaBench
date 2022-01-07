
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_runtime {int buffer_size; int avail; scalar_t__ hw_ptr; scalar_t__ appl_ptr; scalar_t__ drain; } ;



__attribute__((used)) static void __reset_runtime_ptrs(struct snd_rawmidi_runtime *runtime,
     bool is_input)
{
 runtime->drain = 0;
 runtime->appl_ptr = runtime->hw_ptr = 0;
 runtime->avail = is_input ? 0 : runtime->buffer_size;
}
