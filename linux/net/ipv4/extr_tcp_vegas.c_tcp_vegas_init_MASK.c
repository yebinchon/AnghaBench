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
struct vegas {int baseRTT; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 struct vegas* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 

void FUNC2(struct sock *sk)
{
	struct vegas *vegas = FUNC0(sk);

	vegas->baseRTT = 0x7fffffff;
	FUNC1(sk);
}