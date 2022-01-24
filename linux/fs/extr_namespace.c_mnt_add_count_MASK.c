#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mount {int mnt_count; TYPE_1__* mnt_pcp; } ;
struct TYPE_2__ {int /*<<< orphan*/  mnt_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC3(struct mount *mnt, int n)
{
#ifdef CONFIG_SMP
	this_cpu_add(mnt->mnt_pcp->mnt_count, n);
#else
	FUNC0();
	mnt->mnt_count += n;
	FUNC1();
#endif
}