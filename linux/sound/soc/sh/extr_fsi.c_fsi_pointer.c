
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct fsi_stream {int buff_sample_pos; } ;
struct fsi_priv {int dummy; } ;
typedef int snd_pcm_uframes_t ;


 struct fsi_priv* fsi_get_priv (struct snd_pcm_substream*) ;
 int fsi_sample2frame (struct fsi_priv*,int ) ;
 struct fsi_stream* fsi_stream_get (struct fsi_priv*,struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t fsi_pointer(struct snd_pcm_substream *substream)
{
 struct fsi_priv *fsi = fsi_get_priv(substream);
 struct fsi_stream *io = fsi_stream_get(fsi, substream);

 return fsi_sample2frame(fsi, io->buff_sample_pos);
}
