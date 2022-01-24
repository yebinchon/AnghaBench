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
struct TYPE_6__ {unsigned int generation; int /*<<< orphan*/  channel; } ;
struct snd_dg00x {scalar_t__ substreams_counter; int /*<<< orphan*/  domain; int /*<<< orphan*/  tx_stream; int /*<<< orphan*/  rx_stream; TYPE_3__ tx_resources; TYPE_3__ rx_resources; int /*<<< orphan*/  unit; } ;
struct TYPE_5__ {int max_speed; TYPE_1__* card; } ;
struct TYPE_4__ {unsigned int generation; } ;

/* Variables and functions */
 int /*<<< orphan*/  CALLBACK_TIMEOUT ; 
 int ETIMEDOUT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct snd_dg00x*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_dg00x*) ; 
 int FUNC8 (TYPE_3__*) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct snd_dg00x *dg00x)
{
	unsigned int generation = dg00x->rx_resources.generation;
	int err = 0;

	if (dg00x->substreams_counter == 0)
		return 0;

	if (FUNC5(&dg00x->tx_stream) ||
	    FUNC5(&dg00x->rx_stream)) {
		FUNC2(&dg00x->domain);
		FUNC7(dg00x);
	}

	if (generation != FUNC9(dg00x->unit)->card->generation) {
		err = FUNC8(&dg00x->tx_resources);
		if (err < 0)
			goto error;

		err = FUNC8(&dg00x->rx_resources);
		if (err < 0)
			goto error;
	}

	/*
	 * No packets are transmitted without receiving packets, reagardless of
	 * which source of clock is used.
	 */
	if (!FUNC3(&dg00x->rx_stream)) {
		int spd = FUNC9(dg00x->unit)->max_speed;

		err = FUNC6(dg00x);
		if (err < 0)
			goto error;

		err = FUNC0(&dg00x->domain, &dg00x->rx_stream,
					      dg00x->rx_resources.channel, spd);
		if (err < 0)
			goto error;

		err = FUNC0(&dg00x->domain, &dg00x->tx_stream,
					      dg00x->tx_resources.channel, spd);
		if (err < 0)
			goto error;

		err = FUNC1(&dg00x->domain);
		if (err < 0)
			goto error;

		if (!FUNC4(&dg00x->rx_stream,
						CALLBACK_TIMEOUT) ||
		    !FUNC4(&dg00x->tx_stream,
						CALLBACK_TIMEOUT)) {
			err = -ETIMEDOUT;
			goto error;
		}
	}

	return 0;
error:
	FUNC2(&dg00x->domain);
	FUNC7(dg00x);

	return err;
}