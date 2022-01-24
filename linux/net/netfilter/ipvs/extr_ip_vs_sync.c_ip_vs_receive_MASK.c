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
struct msghdr {int /*<<< orphan*/  msg_iter; int /*<<< orphan*/ * member_0; } ;
struct kvec {char* member_0; size_t const member_1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct kvec*,int,size_t const) ; 
 int FUNC3 (struct socket*,struct msghdr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct socket *sock, char *buffer, const size_t buflen)
{
	struct msghdr		msg = {NULL,};
	struct kvec		iov = {buffer, buflen};
	int			len;

	FUNC0(7);

	/* Receive a packet */
	FUNC2(&msg.msg_iter, READ, &iov, 1, buflen);
	len = FUNC3(sock, &msg, MSG_DONTWAIT);
	if (len < 0)
		return len;

	FUNC1(7);
	return len;
}