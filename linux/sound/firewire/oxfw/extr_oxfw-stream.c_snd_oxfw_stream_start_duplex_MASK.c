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
struct snd_oxfw {scalar_t__ substreams_count; int /*<<< orphan*/  out_conn; scalar_t__ has_output; int /*<<< orphan*/  in_conn; int /*<<< orphan*/  domain; int /*<<< orphan*/  tx_stream; int /*<<< orphan*/  rx_stream; TYPE_1__* unit; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

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
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC7 (struct snd_oxfw*,int /*<<< orphan*/ *) ; 

int FUNC8(struct snd_oxfw *oxfw)
{
	int err;

	if (oxfw->substreams_count == 0)
		return -EIO;

	if (FUNC4(&oxfw->rx_stream) ||
	    FUNC4(&oxfw->tx_stream)) {
		FUNC1(&oxfw->domain);

		FUNC5(&oxfw->in_conn);
		if (oxfw->has_output)
			FUNC5(&oxfw->out_conn);
	}

	if (!FUNC2(&oxfw->rx_stream)) {
		err = FUNC7(oxfw, &oxfw->rx_stream);
		if (err < 0) {
			FUNC6(&oxfw->unit->device,
				"fail to prepare rx stream: %d\n", err);
			goto error;
		}

		if (oxfw->has_output &&
		    !FUNC2(&oxfw->tx_stream)) {
			err = FUNC7(oxfw, &oxfw->tx_stream);
			if (err < 0) {
				FUNC6(&oxfw->unit->device,
					"fail to prepare tx stream: %d\n", err);
				goto error;
			}
		}

		err = FUNC0(&oxfw->domain);
		if (err < 0)
			goto error;

		// Wait first packet.
		if (!FUNC3(&oxfw->rx_stream,
						CALLBACK_TIMEOUT)) {
			err = -ETIMEDOUT;
			goto error;
		}

		if (oxfw->has_output) {
			if (!FUNC3(&oxfw->tx_stream,
							CALLBACK_TIMEOUT)) {
				err = -ETIMEDOUT;
				goto error;
			}
		}
	}

	return 0;
error:
	FUNC1(&oxfw->domain);

	FUNC5(&oxfw->in_conn);
	if (oxfw->has_output)
		FUNC5(&oxfw->out_conn);

	return err;
}