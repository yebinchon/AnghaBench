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
struct TYPE_2__ {int /*<<< orphan*/  sk_protocol; } ;

/* Variables and functions */
 scalar_t__ const PF_UNIX ; 
#define  SOCK_DGRAM 131 
#define  SOCK_RAW 130 
#define  SOCK_SEQPACKET 129 
#define  SOCK_STREAM 128 
 int /*<<< orphan*/  TOMOYO_NETWORK_BIND ; 
 int FUNC0 (struct sockaddr*,int,int /*<<< orphan*/ ,struct tomoyo_addr_info*) ; 
 int FUNC1 (struct sockaddr*,int,struct tomoyo_addr_info*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 

int FUNC3(struct socket *sock, struct sockaddr *addr,
				  int addr_len)
{
	struct tomoyo_addr_info address;
	const u8 family = FUNC2(sock->sk);
	const unsigned int type = sock->type;

	if (!family)
		return 0;
	switch (type) {
	case SOCK_STREAM:
	case SOCK_DGRAM:
	case SOCK_RAW:
	case SOCK_SEQPACKET:
		address.protocol = type;
		address.operation = TOMOYO_NETWORK_BIND;
		break;
	default:
		return 0;
	}
	if (family == PF_UNIX)
		return FUNC1(addr, addr_len, &address);
	return FUNC0(addr, addr_len, sock->sk->sk_protocol,
					 &address);
}