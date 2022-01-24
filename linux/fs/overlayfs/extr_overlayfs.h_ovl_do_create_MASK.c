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
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct dentry*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct inode*,struct dentry*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC2(struct inode *dir, struct dentry *dentry,
				umode_t mode)
{
	int err = FUNC1(dir, dentry, mode, true);

	FUNC0("create(%pd2, 0%o) = %i\n", dentry, mode, err);
	return err;
}