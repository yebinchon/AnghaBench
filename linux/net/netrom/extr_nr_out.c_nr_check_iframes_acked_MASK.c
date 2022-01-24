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
struct nr_sock {unsigned short vs; unsigned short va; scalar_t__ n2count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*,unsigned short) ; 
 struct nr_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

void FUNC4(struct sock *sk, unsigned short nr)
{
	struct nr_sock *nrom = FUNC1(sk);

	if (nrom->vs == nr) {
		FUNC0(sk, nr);
		FUNC3(sk);
		nrom->n2count = 0;
	} else {
		if (nrom->va != nr) {
			FUNC0(sk, nr);
			FUNC2(sk);
		}
	}
}