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
struct crc_data {unsigned int run_threads; int /*<<< orphan*/  done; int /*<<< orphan*/  stop; int /*<<< orphan*/ ** unc_len; int /*<<< orphan*/ * unc; int /*<<< orphan*/ * crc32; int /*<<< orphan*/  ready; int /*<<< orphan*/ * thr; int /*<<< orphan*/  go; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(void *data)
{
	struct crc_data *d = data;
	unsigned i;

	while (1) {
		FUNC4(d->go, FUNC0(&d->ready) ||
		                  FUNC3());
		if (FUNC3()) {
			d->thr = NULL;
			FUNC1(&d->stop, 1);
			FUNC5(&d->done);
			break;
		}
		FUNC1(&d->ready, 0);

		for (i = 0; i < d->run_threads; i++)
			*d->crc32 = FUNC2(*d->crc32,
			                     d->unc[i], *d->unc_len[i]);
		FUNC1(&d->stop, 1);
		FUNC5(&d->done);
	}
	return 0;
}