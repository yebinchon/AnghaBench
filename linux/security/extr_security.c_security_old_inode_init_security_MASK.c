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
struct qstr {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,struct inode*,struct inode*,struct qstr const*,char const**,void**,size_t*) ; 
 int /*<<< orphan*/  inode_init_security ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct inode *inode, struct inode *dir,
				     const struct qstr *qstr, const char **name,
				     void **value, size_t *len)
{
	if (FUNC2(FUNC0(inode)))
		return -EOPNOTSUPP;
	return FUNC1(inode_init_security, -EOPNOTSUPP, inode, dir,
			     qstr, name, value, len);
}