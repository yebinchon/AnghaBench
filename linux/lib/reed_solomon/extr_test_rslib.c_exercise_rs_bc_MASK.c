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
struct wspace {int dummy; } ;
struct rs_control {TYPE_1__* codec; } ;
struct bcstat {int rfail; int nwords; int rsuccess; int noncw; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {int nroots; } ;

/* Variables and functions */
 scalar_t__ V_CSUMMARY ; 
 scalar_t__ V_PROGRESS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rs_control*,int,int,int,int,struct bcstat*,struct wspace*) ; 
 scalar_t__ v ; 

__attribute__((used)) static int FUNC3(struct rs_control *rs, struct wspace *ws,
			  int len, int trials)
{
	struct bcstat stat = {0, 0, 0, 0};
	int nroots = rs->codec->nroots;
	int errs, eras, cutoff;

	if (v >= V_PROGRESS)
		FUNC0("Testing beyond error correction capacity...\n");

	for (errs = 1; errs <= nroots; errs++) {
		eras = nroots - 2 * errs + 1;
		if (eras < 0)
			eras = 0;

		cutoff = nroots <= len - errs ? nroots : len - errs;
		for (; eras <= cutoff; eras++)
			FUNC2(rs, len, errs, eras, trials, &stat, ws);
	}

	if (v >= V_CSUMMARY) {
		FUNC0("  decoder gives up:        %d / %d\n",
				stat.rfail, stat.nwords);
		FUNC0("  decoder returns success: %d / %d\n",
				stat.rsuccess, stat.nwords);
		FUNC0("    not a codeword:        %d / %d\n",
				stat.noncw, stat.rsuccess);
	}

	if (stat.noncw && v >= V_PROGRESS)
		FUNC1("    FAIL: %d silent failures!\n", stat.noncw);

	return stat.noncw;
}