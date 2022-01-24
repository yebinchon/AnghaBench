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
struct mount {int /*<<< orphan*/  mnt_pcp; int /*<<< orphan*/  mnt_devname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mount*) ; 
 int /*<<< orphan*/  mnt_cache ; 

__attribute__((used)) static void FUNC3(struct mount *mnt)
{
	FUNC1(mnt->mnt_devname);
#ifdef CONFIG_SMP
	free_percpu(mnt->mnt_pcp);
#endif
	FUNC2(mnt_cache, mnt);
}