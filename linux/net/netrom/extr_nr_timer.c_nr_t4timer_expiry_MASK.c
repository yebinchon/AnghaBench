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
struct timer_list {int dummy; } ;
struct sock {int dummy; } ;
struct nr_sock {struct sock sock; } ;
struct TYPE_2__ {int /*<<< orphan*/  condition; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_COND_PEER_RX_BUSY ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct nr_sock* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct nr_sock* nr ; 
 TYPE_1__* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  t4timer ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct nr_sock *nr = FUNC2(nr, t, t4timer);
	struct sock *sk = &nr->sock;

	FUNC0(sk);
	FUNC3(sk)->condition &= ~NR_COND_PEER_RX_BUSY;
	FUNC1(sk);
}