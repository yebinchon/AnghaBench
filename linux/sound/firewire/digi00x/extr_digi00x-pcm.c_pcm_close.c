
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_dg00x* private_data; } ;
struct snd_dg00x {int dummy; } ;


 int snd_dg00x_stream_lock_release (struct snd_dg00x*) ;

__attribute__((used)) static int pcm_close(struct snd_pcm_substream *substream)
{
 struct snd_dg00x *dg00x = substream->private_data;

 snd_dg00x_stream_lock_release(dg00x);

 return 0;
}
