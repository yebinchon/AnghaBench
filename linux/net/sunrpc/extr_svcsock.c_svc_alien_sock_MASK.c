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
struct socket {int /*<<< orphan*/  sk; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct net* FUNC0 (int /*<<< orphan*/ ) ; 
 struct socket* FUNC1 (int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*) ; 

bool FUNC3(struct net *net, int fd)
{
	int err;
	struct socket *sock = FUNC1(fd, &err);
	bool ret = false;

	if (!sock)
		goto out;
	if (FUNC0(sock->sk) != net)
		ret = true;
	FUNC2(sock);
out:
	return ret;
}