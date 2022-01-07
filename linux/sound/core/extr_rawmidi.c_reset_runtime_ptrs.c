
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_runtime {int lock; } ;


 int __reset_runtime_ptrs (struct snd_rawmidi_runtime*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void reset_runtime_ptrs(struct snd_rawmidi_runtime *runtime,
          bool is_input)
{
 unsigned long flags;

 spin_lock_irqsave(&runtime->lock, flags);
 __reset_runtime_ptrs(runtime, is_input);
 spin_unlock_irqrestore(&runtime->lock, flags);
}
