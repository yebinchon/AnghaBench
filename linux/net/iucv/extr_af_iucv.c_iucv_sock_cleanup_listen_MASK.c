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
struct sock {int /*<<< orphan*/  sk_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  IUCV_CLOSED ; 
 struct sock* FUNC0 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 

__attribute__((used)) static void FUNC3(struct sock *parent)
{
	struct sock *sk;

	/* Close non-accepted connections */
	while ((sk = FUNC0(parent, NULL))) {
		FUNC1(sk);
		FUNC2(sk);
	}

	parent->sk_state = IUCV_CLOSED;
}