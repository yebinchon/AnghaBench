#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct snd_sgio2audio {TYPE_5__* channel; scalar_t__ ring_base; } ;
struct snd_pcm_runtime {unsigned char* dma_area; scalar_t__ period_size; int /*<<< orphan*/  buffer_size; } ;
typedef  int s64 ;
typedef  int s16 ;
struct TYPE_9__ {TYPE_2__* chan; } ;
struct TYPE_10__ {TYPE_3__ audio; } ;
struct TYPE_12__ {TYPE_4__ perif; } ;
struct TYPE_11__ {int pos; int /*<<< orphan*/  lock; scalar_t__ size; TYPE_1__* substream; } ;
struct TYPE_8__ {int /*<<< orphan*/  write_ptr; } ;
struct TYPE_7__ {struct snd_pcm_runtime* runtime; } ;

/* Variables and functions */
 int CHANNEL_LEFT_SHIFT ; 
 int CHANNEL_RIGHT_SHIFT ; 
 unsigned long CHANNEL_RING_MASK ; 
 unsigned int CHANNEL_RING_SHIFT ; 
 int FUNC0 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 TYPE_6__* mace ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_sgio2audio *chip,
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

	FUNC2(&chip->channel[ch].lock, flags);

	dst_base = (unsigned long)chip->ring_base | (ch << CHANNEL_RING_SHIFT);
	dst_pos = FUNC1(&mace->perif.audio.chan[ch].write_ptr);
	src_base = runtime->dma_area;
	src_pos = chip->channel[ch].pos;
	src_mask = FUNC0(runtime, runtime->buffer_size) - 1;

	/* check if a period has elapsed */
	chip->channel[ch].size += (count >> 3); /* in frames */
	ret = chip->channel[ch].size >= runtime->period_size;
	chip->channel[ch].size %= runtime->period_size;

	while (count) {
		src = (s16 *)(src_base + src_pos);
		dst = (u64 *)(dst_base + dst_pos);

		l = src[0]; /* sign extend */
		r = src[1]; /* sign extend */

		*dst = ((l & 0x00ffffff) << CHANNEL_LEFT_SHIFT) |
			((r & 0x00ffffff) << CHANNEL_RIGHT_SHIFT);

		dst_pos = (dst_pos + sizeof(u64)) & CHANNEL_RING_MASK;
		src_pos = (src_pos + 2 * sizeof(s16)) & src_mask;
		count -= sizeof(u64);
	}

	FUNC4(dst_pos, &mace->perif.audio.chan[ch].write_ptr); /* in bytes */
	chip->channel[ch].pos = src_pos;

	FUNC3(&chip->channel[ch].lock, flags);
	return ret;
}