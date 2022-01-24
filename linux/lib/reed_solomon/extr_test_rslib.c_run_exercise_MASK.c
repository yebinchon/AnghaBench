#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wspace {int dummy; } ;
struct rs_control {int /*<<< orphan*/  codec; } ;
struct etab {int symsize; int nroots; int /*<<< orphan*/  ntrials; int /*<<< orphan*/  prim; int /*<<< orphan*/  fcs; int /*<<< orphan*/  genpoly; } ;
struct TYPE_3__ {int mult; int shift; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int ENOMEM ; 
 scalar_t__ V_PROGRESS ; 
 struct wspace* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ bc ; 
 int FUNC2 (struct rs_control*,struct wspace*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rs_control*,struct wspace*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rs_control*) ; 
 int /*<<< orphan*/  FUNC5 (struct wspace*) ; 
 struct rs_control* FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* pad_coef ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,int) ; 
 scalar_t__ v ; 

__attribute__((used)) static int FUNC8(struct etab *e)
{
	int nn = (1 << e->symsize) - 1;
	int kk = nn - e->nroots;
	struct rs_control *rsc;
	int retval = -ENOMEM;
	int max_pad = kk - 1;
	int prev_pad = -1;
	struct wspace *ws;
	int i;

	rsc = FUNC6(e->symsize, e->genpoly, e->fcs, e->prim, e->nroots);
	if (!rsc)
		return retval;

	ws = FUNC1(rsc->codec);
	if (!ws)
		goto err;

	retval = 0;
	for (i = 0; i < FUNC0(pad_coef); i++) {
		int pad = (pad_coef[i].mult * max_pad) >> pad_coef[i].shift;
		int len = nn - pad;

		if (pad == prev_pad)
			continue;

		prev_pad = pad;
		if (v >= V_PROGRESS) {
			FUNC7("Testing (%d,%d)_%d code...\n",
					len, kk - pad, nn + 1);
		}

		retval |= FUNC2(rsc, ws, len, e->ntrials);
		if (bc)
			retval |= FUNC3(rsc, ws, len, e->ntrials);
	}

	FUNC5(ws);

err:
	FUNC4(rsc);
	return retval;
}