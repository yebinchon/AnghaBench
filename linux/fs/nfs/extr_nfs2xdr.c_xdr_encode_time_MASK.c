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
struct timespec {int tv_sec; int tv_nsec; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int NSEC_PER_USEC ; 
 void* FUNC0 (int) ; 

__attribute__((used)) static __be32 *FUNC1(__be32 *p, const struct timespec *timep)
{
	*p++ = FUNC0(timep->tv_sec);
	if (timep->tv_nsec != 0)
		*p++ = FUNC0(timep->tv_nsec / NSEC_PER_USEC);
	else
		*p++ = FUNC0(0);
	return p;
}