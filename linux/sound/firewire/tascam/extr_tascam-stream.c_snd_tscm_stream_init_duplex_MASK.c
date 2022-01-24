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
struct snd_tscm {int /*<<< orphan*/  rx_stream; int /*<<< orphan*/  tx_stream; int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_tscm*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct snd_tscm*,int /*<<< orphan*/ *) ; 

int FUNC3(struct snd_tscm *tscm)
{
	int err;

	err = FUNC2(tscm, &tscm->tx_stream);
	if (err < 0)
		return err;

	err = FUNC2(tscm, &tscm->rx_stream);
	if (err < 0) {
		FUNC1(tscm, &tscm->tx_stream);
		return err;
	}

	err = FUNC0(&tscm->domain);
	if (err < 0) {
		FUNC1(tscm, &tscm->tx_stream);
		FUNC1(tscm, &tscm->rx_stream);
	}

	return err;
}