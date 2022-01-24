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
struct sock_xprt {int /*<<< orphan*/  xprt; int /*<<< orphan*/  recv_mutex; int /*<<< orphan*/ * sock; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t ESHUTDOWN ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 int /*<<< orphan*/  SHUT_RDWR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct sock_xprt*) ; 
 size_t FUNC6 (struct sock_xprt*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct sock_xprt *transport)
{
	size_t read = 0;
	ssize_t ret = 0;

	FUNC2(&transport->recv_mutex);
	if (transport->sock == NULL)
		goto out;
	for (;;) {
		ret = FUNC6(transport, MSG_DONTWAIT);
		if (ret < 0)
			break;
		read += ret;
		FUNC0();
	}
	if (ret == -ESHUTDOWN)
		FUNC1(transport->sock, SHUT_RDWR);
	else
		FUNC5(transport);
out:
	FUNC3(&transport->recv_mutex);
	FUNC4(&transport->xprt, ret, read);
}