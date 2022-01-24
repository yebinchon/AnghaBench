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
struct dentry {int /*<<< orphan*/  d_lock; int /*<<< orphan*/  d_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCACHE_FALLTHRU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct dentry *dentry)
{
	FUNC0(&dentry->d_lock);
	dentry->d_flags |= DCACHE_FALLTHRU;
	FUNC1(&dentry->d_lock);
}