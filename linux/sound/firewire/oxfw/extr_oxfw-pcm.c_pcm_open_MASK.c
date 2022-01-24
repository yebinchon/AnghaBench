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
struct snd_pcm_substream {struct snd_oxfw* private_data; } ;
struct snd_oxfw {int /*<<< orphan*/  rx_stream; int /*<<< orphan*/  tx_stream; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct snd_oxfw*,struct snd_pcm_substream*) ; 
 int FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_oxfw*) ; 
 int FUNC4 (struct snd_oxfw*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream)
{
	struct snd_oxfw *oxfw = substream->private_data;
	int err;

	err = FUNC4(oxfw);
	if (err < 0)
		goto end;

	err = FUNC1(oxfw, substream);
	if (err < 0)
		goto err_locked;

	/*
	 * When any PCM streams are already running, the available sampling
	 * rate is limited at current value.
	 */
	if (FUNC0(&oxfw->tx_stream) ||
	    FUNC0(&oxfw->rx_stream)) {
		err = FUNC2(substream);
		if (err < 0)
			goto end;
	}

	FUNC5(substream);
end:
	return err;
err_locked:
	FUNC3(oxfw);
	return err;
}