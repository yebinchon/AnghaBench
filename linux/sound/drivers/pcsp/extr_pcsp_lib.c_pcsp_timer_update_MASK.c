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
typedef  scalar_t__ u64 ;
struct snd_pcsp {int thalf; int val61; int playback_ptr; int fmt_size; scalar_t__ ns_rem; scalar_t__ enable; scalar_t__ is_signed; struct snd_pcm_substream* playback_substream; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned char* dma_area; } ;

/* Variables and functions */
 unsigned char FUNC0 () ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  i8253_lock ; 
 int /*<<< orphan*/  nforce_wa ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u64 FUNC7(struct snd_pcsp *chip)
{
	unsigned char timer_cnt, val;
	u64 ns;
	struct snd_pcm_substream *substream;
	struct snd_pcm_runtime *runtime;
	unsigned long flags;

	if (chip->thalf) {
		FUNC3(chip->val61, 0x61);
		chip->thalf = 0;
		return chip->ns_rem;
	}

	substream = chip->playback_substream;
	if (!substream)
		return 0;

	runtime = substream->runtime;
	/* assume it is mono! */
	val = runtime->dma_area[chip->playback_ptr + chip->fmt_size - 1];
	if (chip->is_signed)
		val ^= 0x80;
	timer_cnt = val * FUNC0() / 256;

	if (timer_cnt && chip->enable) {
		FUNC5(&i8253_lock, flags);
		if (!nforce_wa) {
			FUNC4(chip->val61, 0x61);
			FUNC4(timer_cnt, 0x42);
			FUNC3(chip->val61 ^ 1, 0x61);
		} else {
			FUNC3(chip->val61 ^ 2, 0x61);
			chip->thalf = 1;
		}
		FUNC6(&i8253_lock, flags);
	}

	chip->ns_rem = FUNC2();
	ns = (chip->thalf ? FUNC1(timer_cnt) : chip->ns_rem);
	chip->ns_rem -= ns;
	return ns;
}