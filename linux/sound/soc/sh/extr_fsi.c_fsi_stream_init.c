
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int period_size; int buffer_size; } ;
struct fsi_stream {int oerr_num; int uerr_num; scalar_t__ bus_option; int sample_width; scalar_t__ period_pos; void* period_samples; scalar_t__ buff_sample_pos; void* buff_sample_capa; struct snd_pcm_substream* substream; } ;
struct fsi_priv {int dummy; } ;
struct fsi_master {int lock; } ;


 void* fsi_frame2sample (struct fsi_priv*,int ) ;
 struct fsi_master* fsi_get_master (struct fsi_priv*) ;
 int fsi_stream_handler_call (struct fsi_stream*,int ,struct fsi_priv*,struct fsi_stream*) ;
 int init ;
 int samples_to_bytes (struct snd_pcm_runtime*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void fsi_stream_init(struct fsi_priv *fsi,
       struct fsi_stream *io,
       struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct fsi_master *master = fsi_get_master(fsi);
 unsigned long flags;

 spin_lock_irqsave(&master->lock, flags);
 io->substream = substream;
 io->buff_sample_capa = fsi_frame2sample(fsi, runtime->buffer_size);
 io->buff_sample_pos = 0;
 io->period_samples = fsi_frame2sample(fsi, runtime->period_size);
 io->period_pos = 0;
 io->sample_width = samples_to_bytes(runtime, 1);
 io->bus_option = 0;
 io->oerr_num = -1;
 io->uerr_num = -1;
 fsi_stream_handler_call(io, init, fsi, io);
 spin_unlock_irqrestore(&master->lock, flags);
}
