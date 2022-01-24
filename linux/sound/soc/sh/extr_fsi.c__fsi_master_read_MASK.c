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
struct fsi_master {int /*<<< orphan*/  lock; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u32 FUNC3(struct fsi_master *master, u32 reg)
{
	u32 ret;
	unsigned long flags;

	FUNC1(&master->lock, flags);
	ret = FUNC0(master->base + reg);
	FUNC2(&master->lock, flags);

	return ret;
}