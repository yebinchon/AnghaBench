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
typedef  scalar_t__ u8 ;
struct tomoyo_addr_info {unsigned int protocol; int /*<<< orphan*/  operation; } ;
struct socket {unsigned int type; TYPE_1__* sk; } ;
struct sockaddr {int dummy; } ;
struct msghdr {int /*<<< orphan*/  msg_namelen; scalar_t__ msg_name; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk_protocol; } ;

/* Variables and functions */
 scalar_t__ const PF_UNIX ; 
 unsigned int const SOCK_DGRAM ; 
 unsigned int const SOCK_RAW ; 
 int /*<<< orphan*/  TOMOYO_NETWORK_SEND ; 
 int FUNC0 (struct sockaddr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tomoyo_addr_info*) ; 
 int FUNC1 (struct sockaddr*,int /*<<< orphan*/ ,struct tomoyo_addr_info*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 

int FUNC3(struct socket *sock, struct msghdr *msg,
				     int size)
{
	struct tomoyo_addr_info address;
	const u8 family = FUNC2(sock->sk);
	const unsigned int type = sock->type;

	if (!msg->msg_name || !family ||
	    (type != SOCK_DGRAM && type != SOCK_RAW))
		return 0;
	address.protocol = type;
	address.operation = TOMOYO_NETWORK_SEND;
	if (family == PF_UNIX)
		return FUNC1((struct sockaddr *)
						 msg->msg_name,
						 msg->msg_namelen, &address);
	return FUNC0((struct sockaddr *) msg->msg_name,
					 msg->msg_namelen,
					 sock->sk->sk_protocol, &address);
}