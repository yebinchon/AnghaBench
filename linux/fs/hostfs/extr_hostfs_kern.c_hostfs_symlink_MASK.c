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
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (struct dentry*) ; 
 int FUNC2 (char*,char const*) ; 

__attribute__((used)) static int FUNC3(struct inode *ino, struct dentry *dentry,
			  const char *to)
{
	char *file;
	int err;

	if ((file = FUNC1(dentry)) == NULL)
		return -ENOMEM;
	err = FUNC2(file, to);
	FUNC0(file);
	return err;
}