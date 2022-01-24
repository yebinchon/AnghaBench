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
struct snd_efw {scalar_t__ substreams_counter; int /*<<< orphan*/  in_conn; int /*<<< orphan*/  out_conn; int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct snd_efw *efw)
{
	if (efw->substreams_counter == 0) {
		FUNC0(&efw->domain);

		FUNC1(&efw->out_conn);
		FUNC1(&efw->in_conn);

		FUNC2(&efw->out_conn);
		FUNC2(&efw->in_conn);
	}
}