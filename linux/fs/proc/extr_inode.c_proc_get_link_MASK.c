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
struct proc_dir_entry {char const* data; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 struct proc_dir_entry* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  proc_put_link ; 
 int /*<<< orphan*/  FUNC2 (struct delayed_call*,int /*<<< orphan*/ ,struct proc_dir_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc_dir_entry*) ; 

__attribute__((used)) static const char *FUNC4(struct dentry *dentry,
				 struct inode *inode,
				 struct delayed_call *done)
{
	struct proc_dir_entry *pde = FUNC1(inode);
	if (!FUNC3(pde))
		return FUNC0(-EINVAL);
	FUNC2(done, proc_put_link, pde);
	return pde->data;
}