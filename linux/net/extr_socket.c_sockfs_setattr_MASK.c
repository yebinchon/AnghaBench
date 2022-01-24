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
struct socket {TYPE_1__* sk; } ;
struct iattr {int ia_valid; int /*<<< orphan*/  ia_uid; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk_uid; } ;

/* Variables and functions */
 int ATTR_UID ; 
 int ENOENT ; 
 struct socket* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int FUNC2 (struct dentry*,struct iattr*) ; 

__attribute__((used)) static int FUNC3(struct dentry *dentry, struct iattr *iattr)
{
	int err = FUNC2(dentry, iattr);

	if (!err && (iattr->ia_valid & ATTR_UID)) {
		struct socket *sock = FUNC0(FUNC1(dentry));

		if (sock->sk)
			sock->sk->sk_uid = iattr->ia_uid;
		else
			err = -ENOENT;
	}

	return err;
}