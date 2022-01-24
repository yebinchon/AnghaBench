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
struct madera_fll {int ref_src; unsigned int ref_freq; unsigned int fout; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct madera_fll*) ; 
 int /*<<< orphan*/  FUNC1 (struct madera_fll*,char*) ; 
 int FUNC2 (struct madera_fll*,int /*<<< orphan*/ ) ; 

int FUNC3(struct madera_fll *fll, int source,
			  unsigned int fref, unsigned int fout)
{
	int ret;

	if (fll->ref_src == source &&
	    fll->ref_freq == fref && fll->fout == fout)
		return 0;

	/*
	 * Changes of fout on an enabled FLL aren't allowed except when
	 * setting fout==0 to disable the FLL
	 */
	if (fout && fout != fll->fout) {
		ret = FUNC2(fll, fll->base);
		if (ret < 0)
			return ret;

		if (ret) {
			FUNC1(fll, "Can't change Fout on active FLL\n");
			return -EBUSY;
		}
	}

	fll->ref_src = source;
	fll->ref_freq = fref;
	fll->fout = fout;

	return FUNC0(fll);
}