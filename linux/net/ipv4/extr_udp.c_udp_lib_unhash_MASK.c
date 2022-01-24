#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct udp_table {int dummy; } ;
struct udp_hslot {int /*<<< orphan*/  lock; int /*<<< orphan*/  count; } ;
struct sock {TYPE_3__* sk_prot; int /*<<< orphan*/  sk_reuseport_cb; } ;
struct TYPE_8__ {scalar_t__ inet_num; } ;
struct TYPE_5__ {struct udp_table* udp_table; } ;
struct TYPE_7__ {TYPE_1__ h; } ;
struct TYPE_6__ {int /*<<< orphan*/  udp_portaddr_node; int /*<<< orphan*/  udp_portaddr_hash; int /*<<< orphan*/  udp_port_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 scalar_t__ FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct udp_hslot* FUNC12 (struct udp_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct udp_hslot* FUNC13 (struct udp_table*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC14 (struct sock*) ; 

void FUNC15(struct sock *sk)
{
	if (FUNC5(sk)) {
		struct udp_table *udptable = sk->sk_prot->h.udp_table;
		struct udp_hslot *hslot, *hslot2;

		hslot  = FUNC12(udptable, FUNC6(sk),
				      FUNC14(sk)->udp_port_hash);
		hslot2 = FUNC13(udptable, FUNC14(sk)->udp_portaddr_hash);

		FUNC9(&hslot->lock);
		if (FUNC2(sk->sk_reuseport_cb))
			FUNC3(sk);
		if (FUNC4(sk)) {
			hslot->count--;
			FUNC1(sk)->inet_num = 0;
			FUNC7(FUNC6(sk), sk->sk_prot, -1);

			FUNC8(&hslot2->lock);
			FUNC0(&FUNC14(sk)->udp_portaddr_node);
			hslot2->count--;
			FUNC10(&hslot2->lock);
		}
		FUNC11(&hslot->lock);
	}
}