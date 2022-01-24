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
struct socket {int dummy; } ;
struct msghdr {int /*<<< orphan*/  msg_iter; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC1 (struct socket*,struct msghdr*,int) ; 

__attribute__((used)) static ssize_t
FUNC2(struct socket *sock, struct msghdr *msg, int flags, size_t seek)
{
	ssize_t ret;
	if (seek != 0)
		FUNC0(&msg->msg_iter, seek);
	ret = FUNC1(sock, msg, flags);
	return ret > 0 ? ret + seek : ret;
}