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
struct snd_tscm {int /*<<< orphan*/  tx_stream; int /*<<< orphan*/  rx_stream; } ;
struct snd_pcm_substream {TYPE_2__* runtime; struct snd_tscm* private_data; } ;
typedef  enum snd_tscm_clock { ____Placeholder_snd_tscm_clock } snd_tscm_clock ;
struct TYPE_3__ {unsigned int rate_min; unsigned int rate_max; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;

/* Variables and functions */
 int SND_TSCM_CLOCK_INTERNAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct snd_tscm*,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*) ; 
 int FUNC3 (struct snd_tscm*,int*) ; 
 int FUNC4 (struct snd_tscm*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_tscm*) ; 
 int FUNC6 (struct snd_tscm*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream)
{
	struct snd_tscm *tscm = substream->private_data;
	enum snd_tscm_clock clock;
	unsigned int rate;
	int err;

	err = FUNC6(tscm);
	if (err < 0)
		goto end;

	err = FUNC1(tscm, substream);
	if (err < 0)
		goto err_locked;

	err = FUNC3(tscm, &clock);
	if (err < 0)
		goto err_locked;

	if (clock != SND_TSCM_CLOCK_INTERNAL ||
	    FUNC0(&tscm->rx_stream) ||
	    FUNC0(&tscm->tx_stream)) {
		err = FUNC4(tscm, &rate);
		if (err < 0)
			goto err_locked;
		substream->runtime->hw.rate_min = rate;
		substream->runtime->hw.rate_max = rate;
	}

	FUNC2(substream);
end:
	return err;
err_locked:
	FUNC5(tscm);
	return err;
}