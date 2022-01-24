#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int umode_t ;
struct inode {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct TYPE_4__ {int /*<<< orphan*/  ip_blkno; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct inode*,struct dentry*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct inode *dir,
		       struct dentry *dentry,
		       umode_t mode)
{
	int ret;

	FUNC3(dir, dentry, dentry->d_name.len, dentry->d_name.name,
			  FUNC0(dir)->ip_blkno, mode);
	ret = FUNC2(dir, dentry, mode | S_IFDIR, 0);
	if (ret)
		FUNC1(ret);

	return ret;
}