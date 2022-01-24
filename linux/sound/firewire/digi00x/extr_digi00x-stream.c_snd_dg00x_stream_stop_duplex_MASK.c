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
struct snd_dg00x {scalar_t__ substreams_counter; int /*<<< orphan*/  rx_resources; int /*<<< orphan*/  tx_resources; int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_dg00x*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct snd_dg00x *dg00x)
{
	if (dg00x->substreams_counter == 0) {
		FUNC0(&dg00x->domain);
		FUNC1(dg00x);

		FUNC2(&dg00x->tx_resources);
		FUNC2(&dg00x->rx_resources);
	}
}