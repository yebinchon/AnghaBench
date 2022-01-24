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
typedef  int /*<<< orphan*/  umode_t ;
struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 struct dentry* FUNC1 (char const*,int /*<<< orphan*/ ,struct dentry*,void*,struct file_operations const*) ; 

struct dentry *FUNC2(const char *name,
				 umode_t mode,
				 struct dentry *parent,
				 void *data,
				 const struct file_operations *fops)
{
	struct dentry *ret;

	ret = FUNC1(name, mode, parent, data, fops);
	if (!ret)
		FUNC0("Could not create tracefs '%s' entry\n", name);

	return ret;
}