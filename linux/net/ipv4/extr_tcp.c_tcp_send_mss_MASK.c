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

/* Variables and functions */
 int MSG_OOB ; 
 int FUNC0 (struct sock*) ; 
 int FUNC1 (struct sock*,int,int) ; 

__attribute__((used)) static int FUNC2(struct sock *sk, int *size_goal, int flags)
{
	int mss_now;

	mss_now = FUNC0(sk);
	*size_goal = FUNC1(sk, mss_now, !(flags & MSG_OOB));

	return mss_now;
}