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
struct sock_addr_test {int /*<<< orphan*/  type; } ;
typedef  int socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,struct sockaddr_storage*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sockaddr_storage*,int) ; 
 scalar_t__ FUNC3 (struct sock_addr_test const*,struct sockaddr_storage*,struct sockaddr_storage*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct sockaddr_storage*,int) ; 

__attribute__((used)) static int FUNC5(const struct sock_addr_test *test)
{
	socklen_t addr_len = sizeof(struct sockaddr_storage);
	struct sockaddr_storage requested_addr;
	struct sockaddr_storage expected_addr;
	int clientfd = -1;
	int servfd = -1;
	int err = 0;

	if (FUNC3(test, &requested_addr, &expected_addr, NULL))
		goto err;

	servfd = FUNC4(test->type, &requested_addr, addr_len);
	if (servfd == -1)
		goto err;

	if (FUNC1(servfd, &expected_addr))
		goto err;

	/* Try to connect to server just in case */
	clientfd = FUNC2(test->type, &expected_addr, addr_len);
	if (clientfd == -1)
		goto err;

	goto out;
err:
	err = -1;
out:
	FUNC0(clientfd);
	FUNC0(servfd);
	return err;
}