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
struct snd_pcm_substream {TYPE_2__* runtime; struct snd_efw* private_data; } ;
struct snd_efw {int /*<<< orphan*/  rx_stream; int /*<<< orphan*/  tx_stream; } ;
typedef  enum snd_efw_clock_source { ____Placeholder_snd_efw_clock_source } snd_efw_clock_source ;
struct TYPE_3__ {unsigned int rate_min; unsigned int rate_max; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;

/* Variables and functions */
 int SND_EFW_CLOCK_SOURCE_INTERNAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct snd_efw*,struct snd_pcm_substream*) ; 
 int FUNC2 (struct snd_efw*,int*) ; 
 int FUNC3 (struct snd_efw*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_efw*) ; 
 int FUNC5 (struct snd_efw*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream)
{
	struct snd_efw *efw = substream->private_data;
	unsigned int sampling_rate;
	enum snd_efw_clock_source clock_source;
	int err;

	err = FUNC5(efw);
	if (err < 0)
		goto end;

	err = FUNC1(efw, substream);
	if (err < 0)
		goto err_locked;

	err = FUNC2(efw, &clock_source);
	if (err < 0)
		goto err_locked;

	/*
	 * When source of clock is not internal or any PCM streams are running,
	 * available sampling rate is limited at current sampling rate.
	 */
	if ((clock_source != SND_EFW_CLOCK_SOURCE_INTERNAL) ||
	    FUNC0(&efw->tx_stream) ||
	    FUNC0(&efw->rx_stream)) {
		err = FUNC3(efw, &sampling_rate);
		if (err < 0)
			goto err_locked;
		substream->runtime->hw.rate_min = sampling_rate;
		substream->runtime->hw.rate_max = sampling_rate;
	}

	FUNC6(substream);
end:
	return err;
err_locked:
	FUNC4(efw);
	return err;
}