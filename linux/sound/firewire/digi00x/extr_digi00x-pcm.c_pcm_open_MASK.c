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
struct snd_pcm_substream {TYPE_2__* runtime; struct snd_dg00x* private_data; } ;
struct snd_dg00x {int /*<<< orphan*/  tx_stream; int /*<<< orphan*/  rx_stream; } ;
typedef  enum snd_dg00x_clock { ____Placeholder_snd_dg00x_clock } snd_dg00x_clock ;
struct TYPE_3__ {unsigned int rate_min; unsigned int rate_max; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;

/* Variables and functions */
 int EBUSY ; 
 int SND_DG00X_CLOCK_INTERNAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct snd_dg00x*,struct snd_pcm_substream*) ; 
 int FUNC2 (struct snd_dg00x*,int*) ; 
 int FUNC3 (struct snd_dg00x*,int*) ; 
 int FUNC4 (struct snd_dg00x*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_dg00x*) ; 
 int FUNC6 (struct snd_dg00x*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream)
{
	struct snd_dg00x *dg00x = substream->private_data;
	enum snd_dg00x_clock clock;
	bool detect;
	unsigned int rate;
	int err;

	err = FUNC6(dg00x);
	if (err < 0)
		goto end;

	err = FUNC1(dg00x, substream);
	if (err < 0)
		goto err_locked;

	/* Check current clock source. */
	err = FUNC3(dg00x, &clock);
	if (err < 0)
		goto err_locked;
	if (clock != SND_DG00X_CLOCK_INTERNAL) {
		err = FUNC2(dg00x, &detect);
		if (err < 0)
			goto err_locked;
		if (!detect) {
			err = -EBUSY;
			goto err_locked;
		}
	}

	if ((clock != SND_DG00X_CLOCK_INTERNAL) ||
	    FUNC0(&dg00x->rx_stream) ||
	    FUNC0(&dg00x->tx_stream)) {
		err = FUNC4(dg00x, &rate);
		if (err < 0)
			goto err_locked;
		substream->runtime->hw.rate_min = rate;
		substream->runtime->hw.rate_max = rate;
	}

	FUNC7(substream);
end:
	return err;
err_locked:
	FUNC5(dg00x);
	return err;
}