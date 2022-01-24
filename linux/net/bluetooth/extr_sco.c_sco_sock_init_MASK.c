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
struct sock {int /*<<< orphan*/  sk_type; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sock*) ; 
 TYPE_1__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct sock*) ; 

__attribute__((used)) static void FUNC3(struct sock *sk, struct sock *parent)
{
	FUNC0("sk %p", sk);

	if (parent) {
		sk->sk_type = parent->sk_type;
		FUNC1(sk)->flags = FUNC1(parent)->flags;
		FUNC2(parent, sk);
	}
}