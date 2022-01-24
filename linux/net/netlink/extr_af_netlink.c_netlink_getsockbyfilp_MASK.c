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
struct sock {scalar_t__ sk_family; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct sock* sk; } ;

/* Variables and functions */
 scalar_t__ AF_NETLINK ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOTSOCK ; 
 struct sock* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 

struct sock *FUNC5(struct file *filp)
{
	struct inode *inode = FUNC3(filp);
	struct sock *sock;

	if (!FUNC2(inode->i_mode))
		return FUNC0(-ENOTSOCK);

	sock = FUNC1(inode)->sk;
	if (sock->sk_family != AF_NETLINK)
		return FUNC0(-EINVAL);

	FUNC4(sock);
	return sock;
}