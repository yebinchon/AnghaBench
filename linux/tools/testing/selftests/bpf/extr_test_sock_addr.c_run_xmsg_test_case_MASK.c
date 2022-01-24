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
struct sockaddr_storage {int dummy; } ;
struct sock_addr_test {scalar_t__ type; } ;
typedef  int socklen_t ;

/* Variables and functions */
 scalar_t__ SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct sockaddr_storage*,struct sockaddr_storage*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sock_addr_test const*,struct sockaddr_storage*,struct sockaddr_storage*,struct sockaddr_storage*) ; 
 int FUNC3 (int,struct sockaddr_storage*) ; 
 int FUNC4 (scalar_t__,struct sockaddr_storage*,int,int,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (scalar_t__,struct sockaddr_storage*,int) ; 

__attribute__((used)) static int FUNC6(const struct sock_addr_test *test, int max_cmsg)
{
	socklen_t addr_len = sizeof(struct sockaddr_storage);
	struct sockaddr_storage expected_addr;
	struct sockaddr_storage server_addr;
	struct sockaddr_storage sendmsg_addr;
	struct sockaddr_storage recvmsg_addr;
	int clientfd = -1;
	int servfd = -1;
	int set_cmsg;
	int err = 0;

	if (test->type != SOCK_DGRAM)
		goto err;

	if (FUNC2(test, &sendmsg_addr, &server_addr, &expected_addr))
		goto err;

	/* Prepare server to sendmsg to */
	servfd = FUNC5(test->type, &server_addr, addr_len);
	if (servfd == -1)
		goto err;

	for (set_cmsg = 0; set_cmsg <= max_cmsg; ++set_cmsg) {
		if (clientfd >= 0)
			FUNC0(clientfd);

		clientfd = FUNC4(test->type, &sendmsg_addr,
					     addr_len, set_cmsg, /*flags*/0,
					     &err);
		if (err)
			goto out;
		else if (clientfd == -1)
			goto err;

		/* Try to receive message on server instead of using
		 * getpeername(2) on client socket, to check that client's
		 * destination address was rewritten properly, since
		 * getpeername(2) doesn't work with unconnected datagram
		 * sockets.
		 *
		 * Get source address from recvmsg(2) as well to make sure
		 * source was rewritten properly: getsockname(2) can't be used
		 * since socket is unconnected and source defined for one
		 * specific packet may differ from the one used by default and
		 * returned by getsockname(2).
		 */
		if (FUNC3(servfd, &recvmsg_addr) == -1)
			goto err;

		if (FUNC1(&recvmsg_addr, &expected_addr, /*cmp_port*/0))
			goto err;
	}

	goto out;
err:
	err = -1;
out:
	FUNC0(clientfd);
	FUNC0(servfd);
	return err;
}