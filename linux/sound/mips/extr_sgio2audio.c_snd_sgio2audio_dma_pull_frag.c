
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u64 ;
struct snd_sgio2audio {TYPE_5__* channel; scalar_t__ ring_base; } ;
struct snd_pcm_runtime {unsigned char* dma_area; scalar_t__ period_size; int buffer_size; } ;
typedef int s16 ;
struct TYPE_9__ {TYPE_2__* chan; } ;
struct TYPE_10__ {TYPE_3__ audio; } ;
struct TYPE_12__ {TYPE_4__ perif; } ;
struct TYPE_11__ {int pos; int lock; scalar_t__ size; TYPE_1__* substream; } ;
struct TYPE_8__ {int read_ptr; } ;
struct TYPE_7__ {struct snd_pcm_runtime* runtime; } ;


 int CHANNEL_LEFT_SHIFT ;
 int CHANNEL_RIGHT_SHIFT ;
 unsigned long CHANNEL_RING_MASK ;
 unsigned int CHANNEL_RING_SHIFT ;
 int frames_to_bytes (struct snd_pcm_runtime*,int ) ;
 TYPE_6__* mace ;
 unsigned long readq (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeq (unsigned long,int *) ;

__attribute__((used)) static int snd_sgio2audio_dma_pull_frag(struct snd_sgio2audio *chip,
     unsigned int ch, unsigned int count)
{
 int ret;
 unsigned long src_base, src_pos, dst_mask;
 unsigned char *dst_base;
 int dst_pos;
 u64 *src;
 s16 *dst;
 u64 x;
 unsigned long flags;
 struct snd_pcm_runtime *runtime = chip->channel[ch].substream->runtime;

 spin_lock_irqsave(&chip->channel[ch].lock, flags);

 src_base = (unsigned long) chip->ring_base | (ch << CHANNEL_RING_SHIFT);
 src_pos = readq(&mace->perif.audio.chan[ch].read_ptr);
 dst_base = runtime->dma_area;
 dst_pos = chip->channel[ch].pos;
 dst_mask = frames_to_bytes(runtime, runtime->buffer_size) - 1;


 chip->channel[ch].size += (count >> 3);
 ret = chip->channel[ch].size >= runtime->period_size;
 chip->channel[ch].size %= runtime->period_size;

 while (count) {
  src = (u64 *)(src_base + src_pos);
  dst = (s16 *)(dst_base + dst_pos);

  x = *src;
  dst[0] = (x >> CHANNEL_LEFT_SHIFT) & 0xffff;
  dst[1] = (x >> CHANNEL_RIGHT_SHIFT) & 0xffff;

  src_pos = (src_pos + sizeof(u64)) & CHANNEL_RING_MASK;
  dst_pos = (dst_pos + 2 * sizeof(s16)) & dst_mask;
  count -= sizeof(u64);
 }

 writeq(src_pos, &mace->perif.audio.chan[ch].read_ptr);
 chip->channel[ch].pos = dst_pos;

 spin_unlock_irqrestore(&chip->channel[ch].lock, flags);
 return ret;
}
