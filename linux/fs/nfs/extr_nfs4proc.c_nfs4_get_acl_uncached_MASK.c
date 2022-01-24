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
struct nfs4_exception {int interruptible; scalar_t__ retry; } ;
struct inode {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*,void*,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,struct nfs4_exception*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,scalar_t__) ; 

__attribute__((used)) static ssize_t FUNC4(struct inode *inode, void *buf, size_t buflen)
{
	struct nfs4_exception exception = {
		.interruptible = true,
	};
	ssize_t ret;
	do {
		ret = FUNC1(inode, buf, buflen);
		FUNC3(inode, ret);
		if (ret >= 0)
			break;
		ret = FUNC2(FUNC0(inode), ret, &exception);
	} while (exception.retry);
	return ret;
}