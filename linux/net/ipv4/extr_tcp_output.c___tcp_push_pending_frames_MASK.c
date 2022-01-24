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
struct sock {scalar_t__ sk_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ TCP_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (struct sock*,unsigned int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

void FUNC4(struct sock *sk, unsigned int cur_mss,
			       int nonagle)
{
	/* If we are closed, the bytes will have to remain here.
	 * In time closedown will finish, we empty the write queue and
	 * all will be happy.
	 */
	if (FUNC3(sk->sk_state == TCP_CLOSE))
		return;

	if (FUNC2(sk, cur_mss, nonagle, 0,
			   FUNC0(sk, GFP_ATOMIC)))
		FUNC1(sk);
}