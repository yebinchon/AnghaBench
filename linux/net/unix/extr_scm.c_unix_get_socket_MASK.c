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
struct socket {TYPE_1__* ops; struct sock* sk; } ;
struct sock {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct file {int f_mode; } ;
struct TYPE_2__ {scalar_t__ family; } ;

/* Variables and functions */
 int FMODE_PATH ; 
 scalar_t__ PF_UNIX ; 
 struct socket* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC2 (struct file*) ; 
 struct sock* FUNC3 (struct file*) ; 

struct sock *FUNC4(struct file *filp)
{
	struct sock *u_sock = NULL;
	struct inode *inode = FUNC2(filp);

	/* Socket ? */
	if (FUNC1(inode->i_mode) && !(filp->f_mode & FMODE_PATH)) {
		struct socket *sock = FUNC0(inode);
		struct sock *s = sock->sk;

		/* PF_UNIX ? */
		if (s && sock->ops && sock->ops->family == PF_UNIX)
			u_sock = s;
	} else {
		/* Could be an io_uring instance */
		u_sock = FUNC3(filp);
	}
	return u_sock;
}