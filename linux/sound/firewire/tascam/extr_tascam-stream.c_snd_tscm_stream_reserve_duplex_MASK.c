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
struct snd_tscm {scalar_t__ substreams_counter; int /*<<< orphan*/  tx_resources; int /*<<< orphan*/  rx_stream; int /*<<< orphan*/  tx_stream; int /*<<< orphan*/  rx_resources; int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_tscm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct snd_tscm*,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct snd_tscm*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_tscm*,unsigned int*) ; 

int FUNC6(struct snd_tscm *tscm, unsigned int rate)
{
	unsigned int curr_rate;
	int err;

	err = FUNC5(tscm, &curr_rate);
	if (err < 0)
		return err;

	if (tscm->substreams_counter == 0 || rate != curr_rate) {
		FUNC0(&tscm->domain);

		FUNC1(tscm);

		FUNC2(&tscm->tx_resources);
		FUNC2(&tscm->rx_resources);

		err = FUNC4(tscm, rate, INT_MAX);
		if (err < 0)
			return err;

		err = FUNC3(tscm, rate, &tscm->tx_stream);
		if (err < 0)
			return err;

		err = FUNC3(tscm, rate, &tscm->rx_stream);
		if (err < 0) {
			FUNC2(&tscm->tx_resources);
			return err;
		}
	}

	return 0;
}