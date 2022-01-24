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
typedef  double u64 ;

/* Variables and functions */
 double NSEC_PER_MSEC ; 
 double NSEC_PER_USEC ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,double) ; 

__attribute__((used)) static char *FUNC1(u64 duration)
{
	static char text[80];

	text[0] = 0;

	if (duration < NSEC_PER_USEC) /* less than 1 usec */
		return text;

	if (duration < NSEC_PER_MSEC) { /* less than 1 msec */
		FUNC0(text, "%.1f us", duration / (double)NSEC_PER_USEC);
		return text;
	}
	FUNC0(text, "%.1f ms", duration / (double)NSEC_PER_MSEC);

	return text;
}