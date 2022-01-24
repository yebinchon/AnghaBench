#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_ice1712 {int /*<<< orphan*/  reg_lock; } ;
struct TYPE_2__ {int channels; int /*<<< orphan*/  dma_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BURST ; 
 scalar_t__ FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLAYBACK_ADDR ; 
 int /*<<< orphan*/  PLAYBACK_COUNT ; 
 int /*<<< orphan*/  PLAYBACK_SIZE ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 
 int FUNC4 (struct snd_pcm_substream*) ; 
 int FUNC5 (struct snd_pcm_substream*) ; 
 struct snd_ice1712* FUNC6 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream)
{
	struct snd_ice1712 *ice = FUNC6(substream);
	unsigned char val;
	unsigned int size;

	FUNC7(&ice->reg_lock);
	val = (8 - substream->runtime->channels) >> 1;
	FUNC1(val, FUNC0(ice, BURST));

	FUNC2(substream->runtime->dma_addr, FUNC0(ice, PLAYBACK_ADDR));

	size = (FUNC4(substream) >> 2) - 1;
	/* outl(size, ICEMT1724(ice, PLAYBACK_SIZE)); */
	FUNC3(size, FUNC0(ice, PLAYBACK_SIZE));
	FUNC1(size >> 16, FUNC0(ice, PLAYBACK_SIZE) + 2);
	size = (FUNC5(substream) >> 2) - 1;
	/* outl(size, ICEMT1724(ice, PLAYBACK_COUNT)); */
	FUNC3(size, FUNC0(ice, PLAYBACK_COUNT));
	FUNC1(size >> 16, FUNC0(ice, PLAYBACK_COUNT) + 2);

	FUNC8(&ice->reg_lock);

	/*
	dev_dbg(ice->card->dev, "pro prepare: ch = %d, addr = 0x%x, "
	       "buffer = 0x%x, period = 0x%x\n",
	       substream->runtime->channels,
	       (unsigned int)substream->runtime->dma_addr,
	       snd_pcm_lib_buffer_bytes(substream),
	       snd_pcm_lib_period_bytes(substream));
	*/
	return 0;
}