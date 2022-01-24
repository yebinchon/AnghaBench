#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {TYPE_3__* runtime; struct snd_motu* private_data; } ;
struct snd_motu_protocol {int (* get_clock_source ) (struct snd_motu*,int*) ;int (* get_clock_rate ) (struct snd_motu*,unsigned int*) ;} ;
struct snd_motu {int /*<<< orphan*/  mutex; int /*<<< orphan*/  rx_stream; int /*<<< orphan*/  tx_stream; TYPE_1__* spec; } ;
typedef  enum snd_motu_clock_source { ____Placeholder_snd_motu_clock_source } snd_motu_clock_source ;
struct TYPE_5__ {unsigned int rate_min; unsigned int rate_max; } ;
struct TYPE_6__ {TYPE_2__ hw; } ;
struct TYPE_4__ {struct snd_motu_protocol* protocol; } ;

/* Variables and functions */
 int SND_MOTU_CLOCK_SOURCE_INTERNAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct snd_motu*,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct snd_motu*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_motu*) ; 
 int FUNC6 (struct snd_motu*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_pcm_substream*) ; 
 int FUNC8 (struct snd_motu*,int*) ; 
 int FUNC9 (struct snd_motu*,unsigned int*) ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_substream *substream)
{
	struct snd_motu *motu = substream->private_data;
	const struct snd_motu_protocol *const protocol = motu->spec->protocol;
	enum snd_motu_clock_source src;
	unsigned int rate;
	int err;

	err = FUNC6(motu);
	if (err < 0)
		return err;

	FUNC2(&motu->mutex);

	err = FUNC4(motu);
	if (err < 0)
		goto err_locked;

	err = FUNC1(motu, substream);
	if (err < 0)
		goto err_locked;

	/*
	 * When source of clock is not internal or any PCM streams are running,
	 * available sampling rate is limited at current sampling rate.
	 */
	err = protocol->get_clock_source(motu, &src);
	if (err < 0)
		goto err_locked;
	if (src != SND_MOTU_CLOCK_SOURCE_INTERNAL ||
	    FUNC0(&motu->tx_stream) ||
	    FUNC0(&motu->rx_stream)) {
		err = protocol->get_clock_rate(motu, &rate);
		if (err < 0)
			goto err_locked;
		substream->runtime->hw.rate_min = rate;
		substream->runtime->hw.rate_max = rate;
	}

	FUNC7(substream);

	FUNC3(&motu->mutex);

	return err;
err_locked:
	FUNC3(&motu->mutex);
	FUNC5(motu);
	return err;
}