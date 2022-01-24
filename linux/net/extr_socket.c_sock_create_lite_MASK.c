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
struct socket {int type; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int,int,int,int) ; 
 int FUNC1 (struct socket*,int,int,int,int) ; 
 struct socket* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 

int FUNC4(int family, int type, int protocol, struct socket **res)
{
	int err;
	struct socket *sock = NULL;

	err = FUNC0(family, type, protocol, 1);
	if (err)
		goto out;

	sock = FUNC2();
	if (!sock) {
		err = -ENOMEM;
		goto out;
	}

	sock->type = type;
	err = FUNC1(sock, family, type, protocol, 1);
	if (err)
		goto out_release;

out:
	*res = sock;
	return err;
out_release:
	FUNC3(sock);
	sock = NULL;
	goto out;
}