#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vt1724_pcm_reg {size_t start; scalar_t__ size; scalar_t__ addr; } ;
struct snd_pcm_substream {TYPE_2__* runtime; } ;
struct snd_ice1712 {TYPE_1__* card; scalar_t__ profi_port; } ;
typedef  size_t snd_pcm_uframes_t ;
struct TYPE_4__ {size_t buffer_size; scalar_t__ dma_addr; struct vt1724_pcm_reg* private_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CONTROL ; 
 scalar_t__ FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 size_t FUNC3 (scalar_t__) ; 
 size_t FUNC4 (scalar_t__) ; 
 struct snd_ice1712* FUNC5 (struct snd_pcm_substream*) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC6(struct snd_pcm_substream *substream)
{
	struct snd_ice1712 *ice = FUNC5(substream);
	const struct vt1724_pcm_reg *reg = substream->runtime->private_data;
	size_t ptr;

	if (!(FUNC3(FUNC0(ice, DMA_CONTROL)) & reg->start))
		return 0;
#if 0 /* use ADDR register */
	ptr = inl(ice->profi_port + reg->addr);
	ptr -= substream->runtime->dma_addr;
	return bytes_to_frames(substream->runtime, ptr);
#else /* use SIZE register */
	ptr = FUNC4(ice->profi_port + reg->size);
	ptr = (ptr + 1) << 2;
	ptr = FUNC1(substream->runtime, ptr);
	if (!ptr)
		;
	else if (ptr <= substream->runtime->buffer_size)
		ptr = substream->runtime->buffer_size - ptr;
	else {
		FUNC2(ice->card->dev, "invalid ptr %d (size=%d)\n",
			   (int)ptr, (int)substream->runtime->buffer_size);
		ptr = 0;
	}
	return ptr;
#endif
}