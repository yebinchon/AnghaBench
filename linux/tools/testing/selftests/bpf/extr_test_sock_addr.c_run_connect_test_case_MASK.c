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
 scalar_t__ SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,struct sockaddr_storage*) ; 
 scalar_t__ FUNC2 (int,struct sockaddr_storage*) ; 
 int FUNC3 (scalar_t__,struct sockaddr_storage*,int) ; 
 int FUNC4 (struct sockaddr_storage*,int) ; 
 scalar_t__ FUNC5 (struct sock_addr_test const*,struct sockaddr_storage*,struct sockaddr_storage*,struct sockaddr_storage*) ; 
 int FUNC6 (scalar_t__,struct sockaddr_storage*,int) ; 

__attribute__((used)) static int FUNC7(const struct sock_addr_test *test)
{
	socklen_t addr_len = sizeof(struct sockaddr_storage);
	struct sockaddr_storage expected_src_addr;
	struct sockaddr_storage requested_addr;
	struct sockaddr_storage expected_addr;
	int clientfd = -1;
	int servfd = -1;
	int err = 0;

	if (FUNC5(test, &requested_addr, &expected_addr,
		       &expected_src_addr))
		goto err;

	/* Prepare server to connect to */
	servfd = FUNC6(test->type, &expected_addr, addr_len);
	if (servfd == -1)
		goto err;

	clientfd = FUNC3(test->type, &requested_addr, addr_len);
	if (clientfd == -1)
		goto err;

	/* Make sure src and dst addrs were overridden properly */
	if (FUNC2(clientfd, &expected_addr))
		goto err;

	if (FUNC1(clientfd, &expected_src_addr))
		goto err;

	if (test->type == SOCK_STREAM) {
		/* Test TCP Fast Open scenario */
		clientfd = FUNC4(&requested_addr, addr_len);
		if (clientfd == -1)
			goto err;

		/* Make sure src and dst addrs were overridden properly */
		if (FUNC2(clientfd, &expected_addr))
			goto err;

		if (FUNC1(clientfd, &expected_src_addr))
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