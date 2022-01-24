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
struct sockaddr {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAD ; 
 int /*<<< orphan*/  PNS_PEP_ENABLE_REQ ; 
 int /*<<< orphan*/  TCP_SYN_SENT ; 
 int FUNC0 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct sock *sk, struct sockaddr *addr, int len)
{
	int err;

	err = FUNC0(sk, PNS_PEP_ENABLE_REQ, PAD,
				NULL, 0);
	if (err)
		return err;

	sk->sk_state = TCP_SYN_SENT;

	return 0;
}