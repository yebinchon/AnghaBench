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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  atomic_long_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ICMP6_MIB_MAX ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(u64 *stats, atomic_long_t *mib,
					int bytes)
{
	int i;
	int pad = bytes - sizeof(u64) * ICMP6_MIB_MAX;
	FUNC0(pad < 0);

	/* Use put_unaligned() because stats may not be aligned for u64. */
	FUNC3(ICMP6_MIB_MAX, &stats[0]);
	for (i = 1; i < ICMP6_MIB_MAX; i++)
		FUNC3(FUNC1(&mib[i]), &stats[i]);

	FUNC2(&stats[ICMP6_MIB_MAX], 0, pad);
}