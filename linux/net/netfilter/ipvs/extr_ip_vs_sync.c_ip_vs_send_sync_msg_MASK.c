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
struct ip_vs_sync_mesg {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int EAGAIN ; 
 int FUNC0 (struct socket*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static int
FUNC3(struct socket *sock, struct ip_vs_sync_mesg *msg)
{
	int msize;
	int ret;

	msize = FUNC1(msg->size);

	ret = FUNC0(sock, (char *)msg, msize);
	if (ret >= 0 || ret == -EAGAIN)
		return ret;
	FUNC2("ip_vs_send_async error %d\n", ret);
	return 0;
}