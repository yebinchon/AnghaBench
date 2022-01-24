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
struct dentry {int dummy; } ;

/* Variables and functions */
 int ATTR_GID ; 
 int ATTR_MODE ; 
 int ATTR_UID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC2(struct dentry *dentry, int ia_valid)
{
	if (!FUNC0())
		return;

	if (ia_valid & (ATTR_MODE | ATTR_UID | ATTR_GID))
		FUNC1(dentry, NULL, NULL, 0);
}