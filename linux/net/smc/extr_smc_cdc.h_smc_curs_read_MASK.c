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
union smc_host_cursor {int /*<<< orphan*/  acurs; } ;
typedef  int /*<<< orphan*/  u64 ;
struct smc_connection {int /*<<< orphan*/  acurs_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline u64 FUNC3(union smc_host_cursor *curs,
				struct smc_connection *conn)
{
#ifndef KERNEL_HAS_ATOMIC64
	unsigned long flags;
	u64 ret;

	FUNC1(&conn->acurs_lock, flags);
	ret = curs->acurs;
	FUNC2(&conn->acurs_lock, flags);
	return ret;
#else
	return atomic64_read(&curs->acurs);
#endif
}