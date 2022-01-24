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
typedef  scalar_t__ u32 ;
struct ceph_pg {scalar_t__ seed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,int) ; 

bool FUNC3(const struct ceph_pg *pgid, u32 old_pg_num,
		      u32 new_pg_num)
{
	int old_bits = FUNC1(old_pg_num);
	int old_mask = (1 << old_bits) - 1;
	int n;

	FUNC0(pgid->seed >= old_pg_num);
	if (new_pg_num <= old_pg_num)
		return false;

	for (n = 1; ; n++) {
		int next_bit = n << (old_bits - 1);
		u32 s = next_bit | pgid->seed;

		if (s < old_pg_num || s == pgid->seed)
			continue;
		if (s >= new_pg_num)
			break;

		s = FUNC2(s, old_pg_num, old_mask);
		if (s == pgid->seed)
			return true;
	}

	return false;
}