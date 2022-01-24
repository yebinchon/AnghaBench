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
struct socket {TYPE_1__* ops; } ;
struct msghdr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sendmsg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIOCBQUEUED ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct socket*,struct msghdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inet6_sendmsg ; 
 int /*<<< orphan*/  inet_sendmsg ; 
 int /*<<< orphan*/  FUNC2 (struct msghdr*) ; 

__attribute__((used)) static inline int FUNC3(struct socket *sock, struct msghdr *msg)
{
	int ret = FUNC1(sock->ops->sendmsg, inet6_sendmsg,
				     inet_sendmsg, sock, msg,
				     FUNC2(msg));
	FUNC0(ret == -EIOCBQUEUED);
	return ret;
}