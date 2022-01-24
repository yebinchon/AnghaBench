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
struct snd_oxfw {int /*<<< orphan*/  tx_stream; scalar_t__ has_output; int /*<<< orphan*/  rx_stream; int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_oxfw*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct snd_oxfw*,int /*<<< orphan*/ *) ; 

int FUNC3(struct snd_oxfw *oxfw)
{
	int err;

	err = FUNC2(oxfw, &oxfw->rx_stream);
	if (err < 0)
		return err;

	if (oxfw->has_output) {
		err = FUNC2(oxfw, &oxfw->tx_stream);
		if (err < 0) {
			FUNC1(oxfw, &oxfw->rx_stream);
			return err;
		}
	}

	err = FUNC0(&oxfw->domain);
	if (err < 0) {
		FUNC1(oxfw, &oxfw->rx_stream);
		if (oxfw->has_output)
			FUNC1(oxfw, &oxfw->tx_stream);
	}

	return err;
}