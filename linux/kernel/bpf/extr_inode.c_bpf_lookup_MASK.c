#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPERM ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC1 (struct inode*,struct dentry*,unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static struct dentry *
FUNC3(struct inode *dir, struct dentry *dentry, unsigned flags)
{
	/* Dots in names (e.g. "/sys/fs/bpf/foo.bar") are reserved for future
	 * extensions.
	 */
	if (FUNC2(dentry->d_name.name, '.'))
		return FUNC0(-EPERM);

	return FUNC1(dir, dentry, flags);
}