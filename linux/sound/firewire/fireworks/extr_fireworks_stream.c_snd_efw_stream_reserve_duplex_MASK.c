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
struct snd_efw {scalar_t__ substreams_counter; int /*<<< orphan*/  in_conn; int /*<<< orphan*/  rx_stream; int /*<<< orphan*/  tx_stream; int /*<<< orphan*/  out_conn; int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct snd_efw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct snd_efw*,int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int FUNC5 (struct snd_efw*,unsigned int*) ; 
 int FUNC6 (struct snd_efw*,unsigned int) ; 
 int FUNC7 (unsigned int,unsigned int*) ; 

int FUNC8(struct snd_efw *efw, unsigned int rate)
{
	unsigned int curr_rate;
	int err;

	// Considering JACK/FFADO streaming:
	// TODO: This can be removed hwdep functionality becomes popular.
	err = FUNC1(efw, &efw->rx_stream);
	if (err < 0)
		return err;

	// stop streams if rate is different.
	err = FUNC5(efw, &curr_rate);
	if (err < 0)
		return err;
	if (rate == 0)
		rate = curr_rate;
	if (rate != curr_rate) {
		FUNC0(&efw->domain);

		FUNC2(&efw->out_conn);
		FUNC2(&efw->in_conn);

		FUNC3(&efw->out_conn);
		FUNC3(&efw->in_conn);
	}

	if (efw->substreams_counter == 0 || rate != curr_rate) {
		unsigned int mode;

		err = FUNC6(efw, rate);
		if (err < 0)
			return err;

		err = FUNC7(rate, &mode);
		if (err < 0)
			return err;

		err = FUNC4(efw, &efw->tx_stream, rate, mode);
		if (err < 0)
			return err;

		err = FUNC4(efw, &efw->rx_stream, rate, mode);
		if (err < 0) {
			FUNC3(&efw->in_conn);
			return err;
		}
	}

	return 0;
}