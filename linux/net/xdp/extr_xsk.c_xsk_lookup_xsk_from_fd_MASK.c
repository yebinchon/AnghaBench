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
struct TYPE_2__ {scalar_t__ sk_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOPROTOOPT ; 
 int /*<<< orphan*/  ENOTSOCK ; 
 struct socket* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PF_XDP ; 
 struct socket* FUNC1 (int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*) ; 

__attribute__((used)) static struct socket *FUNC3(int fd)
{
	struct socket *sock;
	int err;

	sock = FUNC1(fd, &err);
	if (!sock)
		return FUNC0(-ENOTSOCK);

	if (sock->sk->sk_family != PF_XDP) {
		FUNC2(sock);
		return FUNC0(-ENOPROTOOPT);
	}

	return sock;
}