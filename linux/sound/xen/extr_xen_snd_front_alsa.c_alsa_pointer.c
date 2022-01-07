
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_snd_front_pcm_stream_info {int hw_ptr; } ;
struct snd_pcm_substream {int dummy; } ;
typedef int snd_pcm_uframes_t ;


 int atomic_read (int *) ;
 struct xen_snd_front_pcm_stream_info* stream_get (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t alsa_pointer(struct snd_pcm_substream *substream)
{
 struct xen_snd_front_pcm_stream_info *stream = stream_get(substream);

 return (snd_pcm_uframes_t)atomic_read(&stream->hw_ptr);
}
