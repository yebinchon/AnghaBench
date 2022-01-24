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
struct snd_pcm_hw_params {int dummy; } ;
struct snd_cs4231 {int* image; int /*<<< orphan*/  mce_mutex; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 size_t CS4231_IFACE_CTRL ; 
 int CS4231_PLAYBACK_ENABLE ; 
 size_t CS4231_PLAYBK_FORMAT ; 
 size_t CS4231_REC_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_cs4231*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_cs4231*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_cs4231*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_cs4231*,size_t,unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct snd_cs4231 *chip,
				      struct snd_pcm_hw_params *params,
				      unsigned char cdfr)
{
	unsigned long flags;

	FUNC0(&chip->mce_mutex);
	FUNC2(chip, 1);

	FUNC4(chip);

	FUNC6(&chip->lock, flags);
	if (!(chip->image[CS4231_IFACE_CTRL] & CS4231_PLAYBACK_ENABLE)) {
		FUNC5(chip, CS4231_PLAYBK_FORMAT,
			       ((chip->image[CS4231_PLAYBK_FORMAT]) & 0xf0) |
			       (cdfr & 0x0f));
		FUNC7(&chip->lock, flags);
		FUNC3(chip);
		FUNC4(chip);
		FUNC6(&chip->lock, flags);
	}
	FUNC5(chip, CS4231_REC_FORMAT, cdfr);
	FUNC7(&chip->lock, flags);

	FUNC3(chip);

	FUNC2(chip, 0);
	FUNC1(&chip->mce_mutex);
}