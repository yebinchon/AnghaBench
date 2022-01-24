#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {unsigned int generation; int /*<<< orphan*/  channel; } ;
struct snd_motu {scalar_t__ substreams_counter; int /*<<< orphan*/  domain; TYPE_5__* unit; TYPE_3__* spec; int /*<<< orphan*/  rx_stream; int /*<<< orphan*/  tx_stream; TYPE_6__ rx_resources; TYPE_6__ tx_resources; } ;
struct TYPE_11__ {int /*<<< orphan*/  device; } ;
struct TYPE_10__ {int max_speed; TYPE_1__* card; } ;
struct TYPE_9__ {TYPE_2__* protocol; } ;
struct TYPE_8__ {int (* switch_fetching_mode ) (struct snd_motu*,int) ;} ;
struct TYPE_7__ {unsigned int generation; } ;

/* Variables and functions */
 int /*<<< orphan*/  CALLBACK_TIMEOUT ; 
 int ETIMEDOUT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct snd_motu*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC8 (struct snd_motu*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_motu*) ; 
 int FUNC10 (TYPE_6__*) ; 
 TYPE_4__* FUNC11 (TYPE_5__*) ; 
 int FUNC12 (struct snd_motu*,int) ; 

int FUNC13(struct snd_motu *motu)
{
	unsigned int generation = motu->rx_resources.generation;
	int err = 0;

	if (motu->substreams_counter == 0)
		return 0;

	if (FUNC5(&motu->rx_stream) ||
	    FUNC5(&motu->tx_stream)) {
		FUNC2(&motu->domain);
		FUNC9(motu);
	}

	if (generation != FUNC11(motu->unit)->card->generation) {
		err = FUNC10(&motu->rx_resources);
		if (err < 0)
			return err;

		err = FUNC10(&motu->tx_resources);
		if (err < 0)
			return err;
	}

	if (!FUNC3(&motu->rx_stream)) {
		int spd = FUNC11(motu->unit)->max_speed;

		err = FUNC8(motu);
		if (err < 0)
			return err;

		err = FUNC6(motu);
		if (err < 0) {
			FUNC7(&motu->unit->device,
				"fail to start isochronous comm: %d\n", err);
			goto stop_streams;
		}

		err = FUNC0(&motu->domain, &motu->tx_stream,
					      motu->tx_resources.channel, spd);
		if (err < 0)
			goto stop_streams;

		err = FUNC0(&motu->domain, &motu->rx_stream,
					      motu->rx_resources.channel, spd);
		if (err < 0)
			goto stop_streams;

		err = FUNC1(&motu->domain);
		if (err < 0)
			goto stop_streams;

		if (!FUNC4(&motu->tx_stream,
						CALLBACK_TIMEOUT) ||
		    !FUNC4(&motu->rx_stream,
						CALLBACK_TIMEOUT)) {
			err = -ETIMEDOUT;
			goto stop_streams;
		}

		err = motu->spec->protocol->switch_fetching_mode(motu, true);
		if (err < 0) {
			FUNC7(&motu->unit->device,
				"fail to enable frame fetching: %d\n", err);
			goto stop_streams;
		}
	}

	return 0;

stop_streams:
	FUNC2(&motu->domain);
	FUNC9(motu);
	return err;
}