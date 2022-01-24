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
typedef  int s64 ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int EINVAL ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int*,int*,int*,int*) ; 

int FUNC3(const char *input, unsigned dec_shift, s64 *v)
{
	s64 whole, frac = 0;
	int fstart = 0, fend = 0, flen;

	if (!FUNC2(input, "%lld.%n%lld%n", &whole, &fstart, &frac, &fend))
		return -EINVAL;
	if (frac < 0)
		return -EINVAL;

	flen = fend > fstart ? fend - fstart : 0;
	if (flen < dec_shift)
		frac *= FUNC1(dec_shift - flen);
	else
		frac = FUNC0(frac, FUNC1(flen - dec_shift));

	*v = whole * FUNC1(dec_shift) + frac;
	return 0;
}