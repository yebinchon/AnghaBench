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
typedef  union sctp_addr {int dummy; } sctp_addr ;
struct socket {int /*<<< orphan*/  sk; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct socket*,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,union sctp_addr*) ; 

__attribute__((used)) static int FUNC3(struct socket *sock, struct sockaddr *uaddr,
			int peer)
{
	int rc;

	rc = FUNC0(sock, uaddr, peer);

	if (rc < 0)
		return rc;

	rc = FUNC2(FUNC1(sock->sk),
					  (union sctp_addr *)uaddr);

	return rc;
}