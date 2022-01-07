
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_priv {int lock; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int substream; } ;


 int rsnd_io_is_working (struct rsnd_dai_stream*) ;
 struct rsnd_priv* rsnd_mod_to_priv (struct rsnd_mod*) ;
 scalar_t__ rsnd_src_error_occurred (struct rsnd_mod*) ;
 int rsnd_src_status_clear (struct rsnd_mod*) ;
 int snd_pcm_stop_xrun (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void __rsnd_src_interrupt(struct rsnd_mod *mod,
     struct rsnd_dai_stream *io)
{
 struct rsnd_priv *priv = rsnd_mod_to_priv(mod);
 bool stop = 0;

 spin_lock(&priv->lock);


 if (!rsnd_io_is_working(io))
  goto rsnd_src_interrupt_out;

 if (rsnd_src_error_occurred(mod))
  stop = 1;

 rsnd_src_status_clear(mod);
rsnd_src_interrupt_out:

 spin_unlock(&priv->lock);

 if (stop)
  snd_pcm_stop_xrun(io->substream);
}
