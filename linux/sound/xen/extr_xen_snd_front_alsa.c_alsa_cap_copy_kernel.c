
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_snd_front_pcm_stream_info {unsigned long buffer_sz; scalar_t__ buffer; TYPE_1__* evt_pair; } ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int req; } ;


 int EINVAL ;
 int memcpy (void*,scalar_t__,unsigned long) ;
 struct xen_snd_front_pcm_stream_info* stream_get (struct snd_pcm_substream*) ;
 scalar_t__ unlikely (int) ;
 int xen_snd_front_stream_read (int *,unsigned long,unsigned long) ;

__attribute__((used)) static int alsa_cap_copy_kernel(struct snd_pcm_substream *substream,
    int channel, unsigned long pos, void *dst,
    unsigned long count)
{
 struct xen_snd_front_pcm_stream_info *stream = stream_get(substream);
 int ret;

 if (unlikely(pos + count > stream->buffer_sz))
  return -EINVAL;

 ret = xen_snd_front_stream_read(&stream->evt_pair->req, pos, count);
 if (ret < 0)
  return ret;

 memcpy(dst, stream->buffer + pos, count);

 return 0;
}
