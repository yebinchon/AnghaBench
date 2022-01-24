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
struct snd_pcm_substream {scalar_t__ number; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_es18xx {int caps; int dma2_shift; int dma1_shift; scalar_t__ capture_a_substream; } ;

/* Variables and functions */
 int EBUSY ; 
 int ES18XX_DUPLEX_MONO ; 
 int ES18XX_PCM2 ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct snd_es18xx* FUNC6 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
					 struct snd_pcm_hw_params *hw_params)
{
	struct snd_es18xx *chip = FUNC6(substream);
	int shift, err;

	shift = 0;
	if (FUNC2(hw_params) == 2)
		shift++;
	if (FUNC4(FUNC3(hw_params)) == 16)
		shift++;

	if (substream->number == 0 && (chip->caps & ES18XX_PCM2)) {
		if ((chip->caps & ES18XX_DUPLEX_MONO) &&
		    (chip->capture_a_substream) &&
		    FUNC2(hw_params) != 1) {
			FUNC0(hw_params, SNDRV_PCM_HW_PARAM_CHANNELS);
			return -EBUSY;
		}
		chip->dma2_shift = shift;
	} else {
		chip->dma1_shift = shift;
	}
	if ((err = FUNC5(substream, FUNC1(hw_params))) < 0)
		return err;
	return 0;
}