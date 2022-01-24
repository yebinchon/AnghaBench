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
struct sock {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sock*,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 

int FUNC3(struct sock *sk, struct sockaddr *uaddr, int addr_len)
{
	int res;

	FUNC1(sk);
	res = FUNC0(sk, uaddr, addr_len);
	FUNC2(sk);
	return res;
}