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
struct in_ifaddr {int ifa_flags; unsigned long ifa_valid_lft; unsigned long ifa_preferred_lft; scalar_t__ ifa_tstamp; scalar_t__ ifa_cstamp; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  HZ ; 
 int IFA_F_DEPRECATED ; 
 int IFA_F_PERMANENT ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 

__attribute__((used)) static void FUNC2(struct in_ifaddr *ifa, __u32 valid_lft,
			     __u32 prefered_lft)
{
	unsigned long timeout;

	ifa->ifa_flags &= ~(IFA_F_PERMANENT | IFA_F_DEPRECATED);

	timeout = FUNC1(valid_lft, HZ);
	if (FUNC0(timeout))
		ifa->ifa_valid_lft = timeout;
	else
		ifa->ifa_flags |= IFA_F_PERMANENT;

	timeout = FUNC1(prefered_lft, HZ);
	if (FUNC0(timeout)) {
		if (timeout == 0)
			ifa->ifa_flags |= IFA_F_DEPRECATED;
		ifa->ifa_preferred_lft = timeout;
	}
	ifa->ifa_tstamp = jiffies;
	if (!ifa->ifa_cstamp)
		ifa->ifa_cstamp = ifa->ifa_tstamp;
}