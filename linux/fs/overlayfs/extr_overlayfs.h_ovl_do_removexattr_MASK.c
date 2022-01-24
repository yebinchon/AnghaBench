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
 int /*<<< orphan*/  FUNC0 (char*,struct dentry*,char const*,int) ; 
 int FUNC1 (struct dentry*,char const*) ; 

__attribute__((used)) static inline int FUNC2(struct dentry *dentry, const char *name)
{
	int err = FUNC1(dentry, name);
	FUNC0("removexattr(%pd2, \"%s\") = %i\n", dentry, name, err);
	return err;
}