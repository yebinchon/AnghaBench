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
struct unix_address {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct sock {int dummy; } ;
struct msghdr {int /*<<< orphan*/  msg_name; int /*<<< orphan*/  msg_namelen; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct unix_address* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 

__attribute__((used)) static void FUNC3(struct msghdr *msg, struct sock *sk)
{
	struct unix_address *addr = FUNC1(&FUNC2(sk)->addr);

	if (addr) {
		msg->msg_namelen = addr->len;
		FUNC0(msg->msg_name, addr->name, addr->len);
	}
}