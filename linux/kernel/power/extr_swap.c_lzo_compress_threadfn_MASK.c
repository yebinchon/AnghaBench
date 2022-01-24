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
struct cmp_data {int ret; int /*<<< orphan*/  done; int /*<<< orphan*/  stop; int /*<<< orphan*/  wrk; int /*<<< orphan*/  cmp_len; scalar_t__ cmp; int /*<<< orphan*/  unc_len; int /*<<< orphan*/  unc; int /*<<< orphan*/  ready; int /*<<< orphan*/ * thr; int /*<<< orphan*/  go; } ;

/* Variables and functions */
 scalar_t__ LZO_HEADER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(void *data)
{
	struct cmp_data *d = data;

	while (1) {
		FUNC4(d->go, FUNC0(&d->ready) ||
		                  FUNC2());
		if (FUNC2()) {
			d->thr = NULL;
			d->ret = -1;
			FUNC1(&d->stop, 1);
			FUNC5(&d->done);
			break;
		}
		FUNC1(&d->ready, 0);

		d->ret = FUNC3(d->unc, d->unc_len,
		                          d->cmp + LZO_HEADER, &d->cmp_len,
		                          d->wrk);
		FUNC1(&d->stop, 1);
		FUNC5(&d->done);
	}
	return 0;
}