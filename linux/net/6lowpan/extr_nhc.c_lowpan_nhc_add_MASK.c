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
struct lowpan_nhc {scalar_t__ idlen; size_t nexthdr; int /*<<< orphan*/  (* idsetup ) (struct lowpan_nhc*) ;} ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 scalar_t__ LOWPAN_NHC_MAX_ID_LEN ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 struct lowpan_nhc** lowpan_nexthdr_nhcs ; 
 int FUNC1 (struct lowpan_nhc*) ; 
 int /*<<< orphan*/  lowpan_nhc_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct lowpan_nhc*) ; 

int FUNC5(struct lowpan_nhc *nhc)
{
	int ret;

	if (!nhc->idlen || !nhc->idsetup)
		return -EINVAL;

	FUNC0(nhc->idlen > LOWPAN_NHC_MAX_ID_LEN,
		  "LOWPAN_NHC_MAX_ID_LEN should be updated to %zd.\n",
		  nhc->idlen);

	nhc->idsetup(nhc);

	FUNC2(&lowpan_nhc_lock);

	if (lowpan_nexthdr_nhcs[nhc->nexthdr]) {
		ret = -EEXIST;
		goto out;
	}

	ret = FUNC1(nhc);
	if (ret < 0)
		goto out;

	lowpan_nexthdr_nhcs[nhc->nexthdr] = nhc;
out:
	FUNC3(&lowpan_nhc_lock);
	return ret;
}