#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  channel; } ;
struct TYPE_6__ {int /*<<< orphan*/  channel; } ;
struct snd_ff {scalar_t__ substreams_counter; int /*<<< orphan*/  domain; TYPE_4__* spec; int /*<<< orphan*/  tx_stream; int /*<<< orphan*/  rx_stream; TYPE_2__ tx_resources; TYPE_1__ rx_resources; int /*<<< orphan*/  unit; } ;
struct TYPE_10__ {int max_speed; } ;
struct TYPE_9__ {TYPE_3__* protocol; } ;
struct TYPE_8__ {int (* begin_session ) (struct snd_ff*,unsigned int) ;int (* switch_fetching_mode ) (struct snd_ff*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CALLBACK_TIMEOUT_MS ; 
 int ETIMEDOUT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_ff*) ; 
 TYPE_5__* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct snd_ff*,unsigned int) ; 
 int FUNC9 (struct snd_ff*,int) ; 

int FUNC10(struct snd_ff *ff, unsigned int rate)
{
	int err;

	if (ff->substreams_counter == 0)
		return 0;

	if (FUNC5(&ff->tx_stream) ||
	    FUNC5(&ff->rx_stream)) {
		FUNC2(&ff->domain);
		FUNC6(ff);
	}

	/*
	 * Regardless of current source of clock signal, drivers transfer some
	 * packets. Then, the device transfers packets.
	 */
	if (!FUNC3(&ff->rx_stream)) {
		int spd = FUNC7(ff->unit)->max_speed;

		err = ff->spec->protocol->begin_session(ff, rate);
		if (err < 0)
			goto error;

		err = FUNC0(&ff->domain, &ff->rx_stream,
					      ff->rx_resources.channel, spd);
		if (err < 0)
			goto error;

		err = FUNC0(&ff->domain, &ff->tx_stream,
					      ff->tx_resources.channel, spd);
		if (err < 0)
			goto error;

		err = FUNC1(&ff->domain);
		if (err < 0)
			goto error;

		if (!FUNC4(&ff->rx_stream,
						CALLBACK_TIMEOUT_MS) ||
		    !FUNC4(&ff->tx_stream,
						CALLBACK_TIMEOUT_MS)) {
			err = -ETIMEDOUT;
			goto error;
		}

		err = ff->spec->protocol->switch_fetching_mode(ff, true);
		if (err < 0)
			goto error;
	}

	return 0;
error:
	FUNC2(&ff->domain);
	FUNC6(ff);

	return err;
}