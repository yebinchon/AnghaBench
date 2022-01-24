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
struct dec_data {int ret; int /*<<< orphan*/  done; int /*<<< orphan*/  stop; scalar_t__ unc_len; scalar_t__ unc; int /*<<< orphan*/  cmp_len; scalar_t__ cmp; int /*<<< orphan*/  ready; int /*<<< orphan*/ * thr; int /*<<< orphan*/  go; } ;

/* Variables and functions */
 scalar_t__ LZO_HEADER ; 
 scalar_t__ LZO_UNC_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ clean_pages_on_decompress ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,scalar_t__) ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(void *data)
{
	struct dec_data *d = data;

	while (1) {
		FUNC5(d->go, FUNC0(&d->ready) ||
		                  FUNC3());
		if (FUNC3()) {
			d->thr = NULL;
			d->ret = -1;
			FUNC1(&d->stop, 1);
			FUNC6(&d->done);
			break;
		}
		FUNC1(&d->ready, 0);

		d->unc_len = LZO_UNC_SIZE;
		d->ret = FUNC4(d->cmp + LZO_HEADER, d->cmp_len,
		                               d->unc, &d->unc_len);
		if (clean_pages_on_decompress)
			FUNC2((unsigned long)d->unc,
					   (unsigned long)d->unc + d->unc_len);

		FUNC1(&d->stop, 1);
		FUNC6(&d->done);
	}
	return 0;
}