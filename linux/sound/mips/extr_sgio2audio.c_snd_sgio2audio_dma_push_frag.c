
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
typedef int s64 ;
typedef int s16 ;
struct TYPE_9__ {TYPE_2__* chan; } ;
struct TYPE_10__ {TYPE_3__ audio; } ;
struct TYPE_12__ {TYPE_4__ perif; } ;
struct TYPE_11__ {int pos; int lock; scalar_t__ size; TYPE_1__* substream; } ;
struct TYPE_8__ {int write_ptr; } ;
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

__attribute__((used)) static int snd_sgio2audio_dma_push_frag(struct snd_sgio2audio *chip,
     unsigned int ch, unsigned int count)
{
 int ret;
 s64 l, r;
 unsigned long dst_base, dst_pos, src_mask;
 unsigned char *src_base;
 int src_pos;
 u64 *dst;
 s16 *src;
 unsigned long flags;
 struct snd_pcm_runtime *runtime = chip->channel[ch].substream->runtime;

 spin_lock_irqsave(&chip->channel[ch].lock, flags);

 dst_base = (unsigned long)chip->ring_base | (ch << CHANNEL_RING_SHIFT);
 dst_pos = readq(&mace->perif.audio.chan[ch].write_ptr);
 src_base = runtime->dma_area;
 src_pos = chip->channel[ch].pos;
 src_mask = frames_to_bytes(runtime, runtime->buffer_size) - 1;


 chip->channel[ch].size += (count >> 3);
 ret = chip->channel[ch].size >= runtime->period_size;
 chip->channel[ch].size %= runtime->period_size;

 while (count) {
  src = (s16 *)(src_base + src_pos);
  dst = (u64 *)(dst_base + dst_pos);

  l = src[0];
  r = src[1];

  *dst = ((l & 0x00ffffff) << CHANNEL_LEFT_SHIFT) |
   ((r & 0x00ffffff) << CHANNEL_RIGHT_SHIFT);

  dst_pos = (dst_pos + sizeof(u64)) & CHANNEL_RING_MASK;
  src_pos = (src_pos + 2 * sizeof(s16)) & src_mask;
  count -= sizeof(u64);
 }

 writeq(dst_pos, &mace->perif.audio.chan[ch].write_ptr);
 chip->channel[ch].pos = src_pos;

 spin_unlock_irqrestore(&chip->channel[ch].lock, flags);
 return ret;
}
