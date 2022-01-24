#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct wspace {int* derrlocs; int /*<<< orphan*/ * r; int /*<<< orphan*/ * corr; } ;
struct rs_control {TYPE_1__* codec; } ;
struct bcstat {int nwords; int /*<<< orphan*/  rfail; int /*<<< orphan*/  noncw; int /*<<< orphan*/  rsuccess; } ;
struct TYPE_2__ {int nroots; } ;

/* Variables and functions */
 int FUNC0 (struct rs_control*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rs_control*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct rs_control*,struct wspace*,int,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct rs_control *rs, int len, int errs,
		int eras, int trials, struct bcstat *stat,
		struct wspace *ws)
{
	int nroots = rs->codec->nroots;
	int dlen = len - nroots;
	int *derrlocs = ws->derrlocs;
	uint16_t *corr = ws->corr;
	uint16_t *r = ws->r;
	int derrs, j;

	for (j = 0; j < trials; j++) {
		FUNC3(rs, ws, len, errs, eras);
		derrs = FUNC0(rs, r, r + dlen, dlen,
				NULL, eras, derrlocs, 0, corr);
		FUNC2(r, derrs, corr, derrlocs);

		if (derrs >= 0) {
			stat->rsuccess++;

			/*
			 * We check that the returned word is actually a
			 * codeword. The obious way to do this would be to
			 * compute the syndrome, but we don't want to replicate
			 * that code here. However, all the codes are in
			 * systematic form, and therefore we can encode the
			 * returned word, and see whether the parity changes or
			 * not.
			 */
			FUNC5(corr, 0, nroots * sizeof(*corr));
			FUNC1(rs, r, dlen, corr, 0);

			if (FUNC4(r + dlen, corr, nroots * sizeof(*corr)))
				stat->noncw++;
		} else {
			stat->rfail++;
		}
	}
	stat->nwords += trials;
}