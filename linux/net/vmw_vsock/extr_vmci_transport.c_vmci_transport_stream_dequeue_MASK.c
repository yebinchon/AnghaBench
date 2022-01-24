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
struct vsock_sock {int dummy; } ;
struct msghdr {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  qpair; } ;

/* Variables and functions */
 int MSG_PEEK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct msghdr*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct msghdr*,size_t,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct vsock_sock*) ; 

__attribute__((used)) static ssize_t FUNC3(
	struct vsock_sock *vsk,
	struct msghdr *msg,
	size_t len,
	int flags)
{
	if (flags & MSG_PEEK)
		return FUNC1(FUNC2(vsk)->qpair, msg, len, 0);
	else
		return FUNC0(FUNC2(vsk)->qpair, msg, len, 0);
}