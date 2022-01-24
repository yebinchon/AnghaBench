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
struct sock {int /*<<< orphan*/  sk_destruct; } ;
struct TYPE_2__ {int /*<<< orphan*/  reader_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  udp_destruct_sock ; 
 TYPE_1__* FUNC1 (struct sock*) ; 

int FUNC2(struct sock *sk)
{
	FUNC0(&FUNC1(sk)->reader_queue);
	sk->sk_destruct = udp_destruct_sock;
	return 0;
}