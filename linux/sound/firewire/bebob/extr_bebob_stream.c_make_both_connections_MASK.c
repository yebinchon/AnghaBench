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
struct snd_bebob {int /*<<< orphan*/  out_conn; int /*<<< orphan*/  in_conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct snd_bebob *bebob)
{
	int err = 0;

	err = FUNC1(&bebob->out_conn);
	if (err < 0)
		return err;

	err = FUNC1(&bebob->in_conn);
	if (err < 0) {
		FUNC0(&bebob->out_conn);
		return err;
	}

	return 0;
}