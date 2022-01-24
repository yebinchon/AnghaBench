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
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {int adc_i2s_format; int /*<<< orphan*/  (* set_adc_params ) (struct oxygen*,struct snd_pcm_hw_params*) ;} ;
struct oxygen {int /*<<< orphan*/  mutex; TYPE_1__ model; int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  OXYGEN_I2S_A_FORMAT ; 
 int OXYGEN_I2S_BITS_MASK ; 
 int OXYGEN_I2S_FORMAT_MASK ; 
 int OXYGEN_I2S_MCLK_MASK ; 
 int OXYGEN_I2S_RATE_MASK ; 
 int /*<<< orphan*/  OXYGEN_REC_FORMAT ; 
 int /*<<< orphan*/  OXYGEN_REC_FORMAT_A_MASK ; 
 int OXYGEN_REC_FORMAT_A_SHIFT ; 
 int /*<<< orphan*/  PCM_A ; 
 int FUNC0 (struct oxygen*,int /*<<< orphan*/ ,struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_pcm_substream*,struct snd_pcm_hw_params*) ; 
 int FUNC5 (struct snd_pcm_hw_params*) ; 
 int FUNC6 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC7 (struct oxygen*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct oxygen*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct oxygen* FUNC9 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct oxygen*,struct snd_pcm_hw_params*) ; 

__attribute__((used)) static int FUNC13(struct snd_pcm_substream *substream,
				  struct snd_pcm_hw_params *hw_params)
{
	struct oxygen *chip = FUNC9(substream);
	int err;

	err = FUNC4(substream, hw_params);
	if (err < 0)
		return err;

	FUNC10(&chip->reg_lock);
	FUNC8(chip, OXYGEN_REC_FORMAT,
			     FUNC3(hw_params) << OXYGEN_REC_FORMAT_A_SHIFT,
			     OXYGEN_REC_FORMAT_A_MASK);
	FUNC7(chip, OXYGEN_I2S_A_FORMAT,
			      FUNC6(hw_params) |
			      chip->model.adc_i2s_format |
			      FUNC0(chip, PCM_A, hw_params) |
			      FUNC5(hw_params),
			      OXYGEN_I2S_RATE_MASK |
			      OXYGEN_I2S_FORMAT_MASK |
			      OXYGEN_I2S_MCLK_MASK |
			      OXYGEN_I2S_BITS_MASK);
	FUNC11(&chip->reg_lock);

	FUNC1(&chip->mutex);
	chip->model.set_adc_params(chip, hw_params);
	FUNC2(&chip->mutex);
	return 0;
}