
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct rsnd_priv {int lock; } ;
struct rsnd_dai_stream {int dummy; } ;
struct rsnd_dai {int dummy; } ;


 int EINVAL ;




 int init ;
 int irq ;
 int quit ;
 int rsnd_dai_call (int ,struct rsnd_dai_stream*,struct rsnd_priv*,...) ;
 struct rsnd_priv* rsnd_dai_to_priv (struct snd_soc_dai*) ;
 struct rsnd_dai* rsnd_dai_to_rdai (struct snd_soc_dai*) ;
 struct rsnd_dai_stream* rsnd_rdai_to_io (struct rsnd_dai*,struct snd_pcm_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int start ;
 int stop ;

__attribute__((used)) static int rsnd_soc_dai_trigger(struct snd_pcm_substream *substream, int cmd,
       struct snd_soc_dai *dai)
{
 struct rsnd_priv *priv = rsnd_dai_to_priv(dai);
 struct rsnd_dai *rdai = rsnd_dai_to_rdai(dai);
 struct rsnd_dai_stream *io = rsnd_rdai_to_io(rdai, substream);
 int ret;
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);

 switch (cmd) {
 case 130:
 case 131:
  ret = rsnd_dai_call(init, io, priv);
  if (ret < 0)
   goto dai_trigger_end;

  ret = rsnd_dai_call(start, io, priv);
  if (ret < 0)
   goto dai_trigger_end;

  ret = rsnd_dai_call(irq, io, priv, 1);
  if (ret < 0)
   goto dai_trigger_end;

  break;
 case 129:
 case 128:
  ret = rsnd_dai_call(irq, io, priv, 0);

  ret |= rsnd_dai_call(stop, io, priv);

  ret |= rsnd_dai_call(quit, io, priv);

  break;
 default:
  ret = -EINVAL;
 }

dai_trigger_end:
 spin_unlock_irqrestore(&priv->lock, flags);

 return ret;
}
