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
struct snd_efw {scalar_t__ substreams_counter; int /*<<< orphan*/  in_conn; int /*<<< orphan*/  out_conn; int /*<<< orphan*/  domain; int /*<<< orphan*/  tx_stream; int /*<<< orphan*/  rx_stream; } ;

/* Variables and functions */
 int /*<<< orphan*/  CALLBACK_TIMEOUT ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct snd_efw*,unsigned int*) ; 
 int FUNC7 (struct snd_efw*,int /*<<< orphan*/ *,unsigned int) ; 

int FUNC8(struct snd_efw *efw)
{
	unsigned int rate;
	int err = 0;

	// Need no substreams.
	if (efw->substreams_counter == 0)
		return -EIO;

	if (FUNC4(&efw->rx_stream) ||
	    FUNC4(&efw->tx_stream)) {
		FUNC1(&efw->domain);
		FUNC5(&efw->out_conn);
		FUNC5(&efw->in_conn);
	}

	err = FUNC6(efw, &rate);
	if (err < 0)
		return err;

	if (!FUNC2(&efw->rx_stream)) {
		err = FUNC7(efw, &efw->rx_stream, rate);
		if (err < 0)
			goto error;

		err = FUNC7(efw, &efw->tx_stream, rate);
		if (err < 0)
			goto error;

		err = FUNC0(&efw->domain);
		if (err < 0)
			goto error;

		// Wait first callback.
		if (!FUNC3(&efw->rx_stream,
						CALLBACK_TIMEOUT) ||
		    !FUNC3(&efw->tx_stream,
						CALLBACK_TIMEOUT)) {
			err = -ETIMEDOUT;
			goto error;
		}
	}

	return 0;
error:
	FUNC1(&efw->domain);

	FUNC5(&efw->out_conn);
	FUNC5(&efw->in_conn);

	return err;
}