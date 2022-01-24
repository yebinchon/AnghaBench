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
union smc_cdc_cursor {int /*<<< orphan*/  acurs; } ;
struct smc_connection {int /*<<< orphan*/  acurs_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC4(union smc_cdc_cursor *tgt,
				     union smc_cdc_cursor *src,
				     struct smc_connection *conn)
{
#ifndef KERNEL_HAS_ATOMIC64
	unsigned long flags;

	FUNC2(&conn->acurs_lock, flags);
	tgt->acurs = src->acurs;
	FUNC3(&conn->acurs_lock, flags);
#else
	atomic64_set(&tgt->acurs, atomic64_read(&src->acurs));
#endif
}