
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct fsi_stream {int dummy; } ;
struct fsi_priv {struct fsi_stream capture; struct fsi_stream playback; } ;


 scalar_t__ fsi_is_play (struct snd_pcm_substream*) ;

__attribute__((used)) static inline struct fsi_stream *fsi_stream_get(struct fsi_priv *fsi,
     struct snd_pcm_substream *substream)
{
 return fsi_is_play(substream) ? &fsi->playback : &fsi->capture;
}
