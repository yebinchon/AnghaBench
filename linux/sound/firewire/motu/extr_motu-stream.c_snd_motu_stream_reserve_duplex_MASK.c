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
struct snd_motu {scalar_t__ substreams_counter; int /*<<< orphan*/  tx_resources; int /*<<< orphan*/  rx_stream; int /*<<< orphan*/  tx_stream; TYPE_3__* unit; TYPE_2__* spec; int /*<<< orphan*/  rx_resources; int /*<<< orphan*/  domain; } ;
struct TYPE_6__ {int /*<<< orphan*/  device; } ;
struct TYPE_5__ {TYPE_1__* protocol; } ;
struct TYPE_4__ {int (* get_clock_rate ) (struct snd_motu*,unsigned int*) ;int (* set_clock_rate ) (struct snd_motu*,unsigned int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_motu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct snd_motu*,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct snd_motu*) ; 
 int FUNC6 (struct snd_motu*,unsigned int*) ; 
 int FUNC7 (struct snd_motu*,unsigned int) ; 

int FUNC8(struct snd_motu *motu, unsigned int rate)
{
	unsigned int curr_rate;
	int err;

	err = motu->spec->protocol->get_clock_rate(motu, &curr_rate);
	if (err < 0)
		return err;
	if (rate == 0)
		rate = curr_rate;

	if (motu->substreams_counter == 0 || curr_rate != rate) {
		FUNC0(&motu->domain);
		FUNC2(motu);

		FUNC3(&motu->tx_resources);
		FUNC3(&motu->rx_resources);

		err = motu->spec->protocol->set_clock_rate(motu, rate);
		if (err < 0) {
			FUNC1(&motu->unit->device,
				"fail to set sampling rate: %d\n", err);
			return err;
		}

		err = FUNC5(motu);
		if (err < 0)
			return err;

		err = FUNC4(motu, rate, &motu->tx_stream);
		if (err < 0)
			return err;

		err = FUNC4(motu, rate, &motu->rx_stream);
		if (err < 0) {
			FUNC3(&motu->tx_resources);
			return err;
		}
	}

	return 0;
}