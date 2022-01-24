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
struct sock {int dummy; } ;
struct msghdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int FUNC2 (struct sock*,struct msghdr*,size_t) ; 

int FUNC3(struct sock *sk, struct msghdr *msg, size_t size)
{
	int ret;

	FUNC0(sk);
	ret = FUNC2(sk, msg, size);
	FUNC1(sk);

	return ret;
}