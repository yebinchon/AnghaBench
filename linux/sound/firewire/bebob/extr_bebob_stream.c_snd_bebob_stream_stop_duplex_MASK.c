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
struct snd_bebob {scalar_t__ substreams_counter; int /*<<< orphan*/  in_conn; int /*<<< orphan*/  out_conn; int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_bebob*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct snd_bebob *bebob)
{
	if (bebob->substreams_counter == 0) {
		FUNC0(&bebob->domain);
		FUNC1(bebob);

		FUNC2(&bebob->out_conn);
		FUNC2(&bebob->in_conn);
	}
}