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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; scalar_t__ dma_addr; int /*<<< orphan*/  rate; int /*<<< orphan*/  format; } ;
struct fm801 {int cap_size; int cap_count; int cap_ctrl; int /*<<< orphan*/  reg_lock; scalar_t__ cap_buffer; scalar_t__ cap_pos; scalar_t__ cap_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_BUF1 ; 
 int /*<<< orphan*/  CAP_BUF2 ; 
 int /*<<< orphan*/  CAP_COUNT ; 
 int /*<<< orphan*/  CAP_CTRL ; 
 int FM801_16BIT ; 
 int FM801_RATE_MASK ; 
 int FM801_RATE_SHIFT ; 
 int FM801_START ; 
 int FM801_STEREO ; 
 int /*<<< orphan*/  FUNC0 (struct fm801*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct fm801*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_pcm_substream*) ; 
 int FUNC5 (struct snd_pcm_substream*) ; 
 struct fm801* FUNC6 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream)
{
	struct fm801 *chip = FUNC6(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;

	chip->cap_size = FUNC4(substream);
	chip->cap_count = FUNC5(substream);
	FUNC7(&chip->reg_lock);
	chip->cap_ctrl &= ~(FM801_START | FM801_16BIT |
			     FM801_STEREO | FM801_RATE_MASK);
	if (FUNC3(runtime->format) == 16)
		chip->cap_ctrl |= FM801_16BIT;
	if (runtime->channels > 1)
		chip->cap_ctrl |= FM801_STEREO;
	chip->cap_ctrl |= FUNC2(runtime->rate) << FM801_RATE_SHIFT;
	chip->cap_buf = 0;
	FUNC1(chip, CAP_CTRL, chip->cap_ctrl);
	FUNC1(chip, CAP_COUNT, chip->cap_count - 1);
	chip->cap_buffer = runtime->dma_addr;
	chip->cap_pos = 0;
	FUNC0(chip, CAP_BUF1, chip->cap_buffer);
	FUNC0(chip, CAP_BUF2,
		     chip->cap_buffer + (chip->cap_count % chip->cap_size));
	FUNC8(&chip->reg_lock);
	return 0;
}