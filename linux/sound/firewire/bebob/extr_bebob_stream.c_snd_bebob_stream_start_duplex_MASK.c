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
struct snd_bebob {scalar_t__ substreams_counter; int /*<<< orphan*/  domain; int /*<<< orphan*/  tx_stream; int /*<<< orphan*/  rx_stream; TYPE_3__* unit; TYPE_2__* spec; scalar_t__ maudio_special_quirk; } ;
struct TYPE_6__ {int /*<<< orphan*/  device; } ;
struct TYPE_5__ {TYPE_1__* rate; } ;
struct TYPE_4__ {int (* get ) (struct snd_bebob*,unsigned int*) ;int (* set ) (struct snd_bebob*,unsigned int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CALLBACK_TIMEOUT ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_bebob*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC7 (struct snd_bebob*) ; 
 int FUNC8 (struct snd_bebob*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct snd_bebob*,unsigned int*) ; 
 int FUNC10 (struct snd_bebob*,unsigned int) ; 

int FUNC11(struct snd_bebob *bebob)
{
	int err;

	// Need no substreams.
	if (bebob->substreams_counter == 0)
		return -EIO;

	// packet queueing error or detecting discontinuity
	if (FUNC4(&bebob->rx_stream) ||
	    FUNC4(&bebob->tx_stream)) {
		FUNC1(&bebob->domain);
		FUNC5(bebob);
	}

	if (!FUNC2(&bebob->rx_stream)) {
		unsigned int curr_rate;

		if (bebob->maudio_special_quirk) {
			err = bebob->spec->rate->get(bebob, &curr_rate);
			if (err < 0)
				return err;
		}

		err = FUNC7(bebob);
		if (err < 0)
			return err;

		err = FUNC8(bebob, &bebob->rx_stream);
		if (err < 0)
			goto error;

		err = FUNC8(bebob, &bebob->tx_stream);
		if (err < 0)
			goto error;

		err = FUNC0(&bebob->domain);
		if (err < 0)
			goto error;

		// NOTE:
		// The firmware customized by M-Audio uses these commands to
		// start transmitting stream. This is not usual way.
		if (bebob->maudio_special_quirk) {
			err = bebob->spec->rate->set(bebob, curr_rate);
			if (err < 0) {
				FUNC6(&bebob->unit->device,
					"fail to ensure sampling rate: %d\n",
					err);
				goto error;
			}
		}

		if (!FUNC3(&bebob->rx_stream,
						CALLBACK_TIMEOUT) ||
		    !FUNC3(&bebob->tx_stream,
						CALLBACK_TIMEOUT)) {
			err = -ETIMEDOUT;
			goto error;
		}
	}

	return 0;
error:
	FUNC1(&bebob->domain);
	FUNC5(bebob);
	return err;
}