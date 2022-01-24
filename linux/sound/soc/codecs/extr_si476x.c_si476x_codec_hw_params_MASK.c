#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dai {TYPE_1__* component; int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct si476x_core {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SI476X_DIGITAL_IO_OUTPUT_FORMAT ; 
 int /*<<< orphan*/  SI476X_DIGITAL_IO_OUTPUT_SAMPLE_RATE ; 
 int /*<<< orphan*/  SI476X_DIGITAL_IO_OUTPUT_WIDTH_MASK ; 
 int SI476X_DIGITAL_IO_SAMPLE_SIZE_SHIFT ; 
 int SI476X_DIGITAL_IO_SLOT_SIZE_SHIFT ; 
 int SI476X_PCM_FORMAT_S16_LE ; 
 int SI476X_PCM_FORMAT_S20_3LE ; 
 int SI476X_PCM_FORMAT_S24_LE ; 
 int SI476X_PCM_FORMAT_S8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 struct si476x_core* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct si476x_core*) ; 
 int /*<<< orphan*/  FUNC5 (struct si476x_core*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream,
				  struct snd_pcm_hw_params *params,
				  struct snd_soc_dai *dai)
{
	struct si476x_core *core = FUNC1(dai->dev);
	int rate, width, err;

	rate = FUNC2(params);
	if (rate < 32000 || rate > 48000) {
		FUNC0(dai->component->dev, "Rate: %d is not supported\n", rate);
		return -EINVAL;
	}

	switch (FUNC3(params)) {
	case 8:
		width = SI476X_PCM_FORMAT_S8;
		break;
	case 16:
		width = SI476X_PCM_FORMAT_S16_LE;
		break;
	case 20:
		width = SI476X_PCM_FORMAT_S20_3LE;
		break;
	case 24:
		width = SI476X_PCM_FORMAT_S24_LE;
		break;
	default:
		return -EINVAL;
	}

	FUNC4(core);

	err = FUNC7(dai->component, SI476X_DIGITAL_IO_OUTPUT_SAMPLE_RATE,
			    rate);
	if (err < 0) {
		FUNC0(dai->component->dev, "Failed to set sample rate\n");
		goto out;
	}

	err = FUNC6(dai->component, SI476X_DIGITAL_IO_OUTPUT_FORMAT,
				  SI476X_DIGITAL_IO_OUTPUT_WIDTH_MASK,
				  (width << SI476X_DIGITAL_IO_SLOT_SIZE_SHIFT) |
				  (width << SI476X_DIGITAL_IO_SAMPLE_SIZE_SHIFT));
	if (err < 0) {
		FUNC0(dai->component->dev, "Failed to set output width\n");
		goto out;
	}

out:
	FUNC5(core);

	return err;
}