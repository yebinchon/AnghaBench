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
struct dentry {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  xattr_sem; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct dentry*,char*,size_t) ; 
 int FUNC4 (struct dentry*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

ssize_t
FUNC6(struct dentry *dentry, char *buffer, size_t buffer_size)
{
	int ret, ret2;

	FUNC2(&FUNC0(FUNC1(dentry))->xattr_sem);
	ret = ret2 = FUNC4(dentry, buffer, buffer_size);
	if (ret < 0)
		goto errout;
	if (buffer) {
		buffer += ret;
		buffer_size -= ret;
	}
	ret = FUNC3(dentry, buffer, buffer_size);
	if (ret < 0)
		goto errout;
	ret += ret2;
errout:
	FUNC5(&FUNC0(FUNC1(dentry))->xattr_sem);
	return ret;
}