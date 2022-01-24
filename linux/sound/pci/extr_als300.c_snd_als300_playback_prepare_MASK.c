#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned short dma_addr; } ;
struct snd_als300 {int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  PLAYBACK_CONTROL ; 
 int /*<<< orphan*/  PLAYBACK_END ; 
 int /*<<< orphan*/  PLAYBACK_START ; 
 int TRANSFER_START ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned short,unsigned short) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned short) ; 
 unsigned short FUNC3 (struct snd_pcm_substream*) ; 
 unsigned short FUNC4 (struct snd_pcm_substream*) ; 
 struct snd_als300* FUNC5 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream)
{
	u32 tmp;
	struct snd_als300 *chip = FUNC5(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	unsigned short period_bytes = FUNC4(substream);
	unsigned short buffer_bytes = FUNC3(substream);
	
	FUNC6(&chip->reg_lock);
	tmp = FUNC1(chip->port, PLAYBACK_CONTROL);
	tmp &= ~TRANSFER_START;

	FUNC0("Period bytes: %d Buffer bytes %d\n",
						period_bytes, buffer_bytes);
	
	/* set block size */
	tmp &= 0xffff0000;
	tmp |= period_bytes - 1;
	FUNC2(chip->port, PLAYBACK_CONTROL, tmp);

	/* set dma area */
	FUNC2(chip->port, PLAYBACK_START,
					runtime->dma_addr);
	FUNC2(chip->port, PLAYBACK_END,
					runtime->dma_addr + buffer_bytes - 1);
	FUNC7(&chip->reg_lock);
	return 0;
}