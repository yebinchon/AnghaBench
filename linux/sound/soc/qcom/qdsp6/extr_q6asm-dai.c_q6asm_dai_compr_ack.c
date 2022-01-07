
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_compr_stream {struct snd_compr_runtime* runtime; } ;
struct snd_compr_runtime {struct q6asm_dai_rtd* private_data; } ;
struct q6asm_dai_rtd {size_t bytes_received; int lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int q6asm_dai_compr_ack(struct snd_compr_stream *stream,
    size_t count)
{
 struct snd_compr_runtime *runtime = stream->runtime;
 struct q6asm_dai_rtd *prtd = runtime->private_data;
 unsigned long flags;

 spin_lock_irqsave(&prtd->lock, flags);
 prtd->bytes_received += count;
 spin_unlock_irqrestore(&prtd->lock, flags);

 return count;
}
