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
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*,char const*,char*,int) ; 

bool FUNC2(struct dentry *dentry, const char *name)
{
	int res;
	char val;

	if (!FUNC0(dentry))
		return false;

	res = FUNC1(dentry, name, &val, 1);
	if (res == 1 && val == 'y')
		return true;

	return false;
}