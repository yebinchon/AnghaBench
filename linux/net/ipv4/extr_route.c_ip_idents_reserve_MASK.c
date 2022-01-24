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
typedef  int u32 ;
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 int IP_IDENTS_SZ ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int*,int,int) ; 
 int /*<<< orphan*/ * ip_idents ; 
 int* ip_tstamps ; 
 scalar_t__ jiffies ; 
 int FUNC4 (int) ; 

u32 FUNC5(u32 hash, int segs)
{
	u32 *p_tstamp = ip_tstamps + hash % IP_IDENTS_SZ;
	atomic_t *p_id = ip_idents + hash % IP_IDENTS_SZ;
	u32 old = FUNC0(*p_tstamp);
	u32 now = (u32)jiffies;
	u32 new, delta = 0;

	if (old != now && FUNC3(p_tstamp, old, now) == old)
		delta = FUNC4(now - old);

	/* Do not use atomic_add_return() as it makes UBSAN unhappy */
	do {
		old = (u32)FUNC2(p_id);
		new = old + delta + segs;
	} while (FUNC1(p_id, old, new) != old);

	return new - segs;
}