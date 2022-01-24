#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ vcn; scalar_t__ length; } ;
typedef  TYPE_1__ runlist_element ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int,int) ; 
 TYPE_1__* FUNC4 (TYPE_1__*,int,int) ; 

__attribute__((used)) static inline runlist_element *FUNC5(runlist_element *dst, int dsize,
		runlist_element *src, int ssize, int loc)
{
	FUNC0(!dst);
	FUNC0(!src);

	/* Space required: @dst size + @src size + one new hole. */
	dst = FUNC4(dst, dsize, dsize + ssize + 1);
	if (FUNC1(dst))
		return dst;
	/*
	 * We are guaranteed to succeed from here so can start modifying the
	 * original runlists.
	 */

	/* Move the tail of @dst out of the way, then copy in @src. */
	FUNC3(dst, loc + 1 + ssize, loc, dsize - loc);
	FUNC2(dst, loc + 1, src, 0, ssize);

	/* Adjust the size of the holes either size of @src. */
	dst[loc].length		= dst[loc+1].vcn       - dst[loc].vcn;
	dst[loc+ssize+1].vcn    = dst[loc+ssize].vcn   + dst[loc+ssize].length;
	dst[loc+ssize+1].length = dst[loc+ssize+2].vcn - dst[loc+ssize+1].vcn;

	return dst;
}