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
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct dentry* FUNC0 (struct inode*) ; 
 char* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 

__attribute__((used)) static char *FUNC3(struct inode *ino)
{
	struct dentry *dentry;
	char *name;

	dentry = FUNC0(ino);
	if (!dentry)
		return NULL;

	name = FUNC1(dentry);

	FUNC2(dentry);

	return name;
}