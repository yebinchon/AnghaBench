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
struct nr_sock {int condition; scalar_t__ n2count; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_CONNREQ ; 
 struct nr_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 

void FUNC6(struct sock *sk)
{
	struct nr_sock *nr = FUNC0(sk);

	nr->condition = 0x00;
	nr->n2count   = 0;

	FUNC5(sk, NR_CONNREQ);

	FUNC3(sk);
	FUNC4(sk);
	FUNC2(sk);
	FUNC1(sk);
}