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
struct snd_bebob {int /*<<< orphan*/ * maudio_special_quirk; int /*<<< orphan*/  out_conn; int /*<<< orphan*/  in_conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(struct snd_bebob *bebob)
{
	FUNC0(&bebob->in_conn);
	FUNC0(&bebob->out_conn);

	/* These models seems to be in transition state for a longer time. */
	if (bebob->maudio_special_quirk != NULL)
		FUNC1(200);
}