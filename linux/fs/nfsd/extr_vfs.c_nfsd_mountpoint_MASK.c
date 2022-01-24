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
struct svc_export {int ex_flags; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int NFSEXP_V4ROOT ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 

int FUNC3(struct dentry *dentry, struct svc_export *exp)
{
	if (!FUNC0(dentry))
		return 0;
	if (exp->ex_flags & NFSEXP_V4ROOT)
		return 1;
	if (FUNC2(dentry))
		return 1;
	if (FUNC1(dentry))
		/*
		 * Might only be a mountpoint in a different namespace,
		 * but we need to check.
		 */
		return 2;
	return 0;
}