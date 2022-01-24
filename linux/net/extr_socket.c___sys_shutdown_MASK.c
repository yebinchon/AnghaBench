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
struct socket {int /*<<< orphan*/  file; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* shutdown ) (struct socket*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct socket*,int) ; 
 struct socket* FUNC2 (int,int*,int*) ; 
 int FUNC3 (struct socket*,int) ; 

int FUNC4(int fd, int how)
{
	int err, fput_needed;
	struct socket *sock;

	sock = FUNC2(fd, &err, &fput_needed);
	if (sock != NULL) {
		err = FUNC1(sock, how);
		if (!err)
			err = sock->ops->shutdown(sock, how);
		FUNC0(sock->file, fput_needed);
	}
	return err;
}