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
struct snd_oxfw {scalar_t__ substreams_count; int /*<<< orphan*/  out_conn; scalar_t__ has_output; int /*<<< orphan*/  in_conn; int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct snd_oxfw *oxfw)
{
	if (oxfw->substreams_count == 0) {
		FUNC0(&oxfw->domain);

		FUNC1(&oxfw->in_conn);
		FUNC2(&oxfw->in_conn);

		if (oxfw->has_output) {
			FUNC1(&oxfw->out_conn);
			FUNC2(&oxfw->out_conn);
		}
	}
}