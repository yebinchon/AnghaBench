#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct udp_table {int dummy; } ;
struct udp_hslot {int /*<<< orphan*/  lock; int /*<<< orphan*/  count; int /*<<< orphan*/  head; } ;
struct sock {int /*<<< orphan*/  sk_reuseport_cb; TYPE_2__* sk_prot; } ;
struct TYPE_6__ {int /*<<< orphan*/  udp_portaddr_node; int /*<<< orphan*/  udp_port_hash; int /*<<< orphan*/  udp_portaddr_hash; } ;
struct TYPE_4__ {struct udp_table* udp_table; } ;
struct TYPE_5__ {TYPE_1__ h; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 scalar_t__ FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct udp_hslot* FUNC10 (struct udp_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct udp_hslot* FUNC11 (struct udp_table*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC12 (struct sock*) ; 

void FUNC13(struct sock *sk, u16 newhash)
{
	if (FUNC4(sk)) {
		struct udp_table *udptable = sk->sk_prot->h.udp_table;
		struct udp_hslot *hslot, *hslot2, *nhslot2;

		hslot2 = FUNC11(udptable, FUNC12(sk)->udp_portaddr_hash);
		nhslot2 = FUNC11(udptable, newhash);
		FUNC12(sk)->udp_portaddr_hash = newhash;

		if (hslot2 != nhslot2 ||
		    FUNC2(sk->sk_reuseport_cb)) {
			hslot = FUNC10(udptable, FUNC5(sk),
					     FUNC12(sk)->udp_port_hash);
			/* we must lock primary chain too */
			FUNC7(&hslot->lock);
			if (FUNC2(sk->sk_reuseport_cb))
				FUNC3(sk);

			if (hslot2 != nhslot2) {
				FUNC6(&hslot2->lock);
				FUNC1(&FUNC12(sk)->udp_portaddr_node);
				hslot2->count--;
				FUNC8(&hslot2->lock);

				FUNC6(&nhslot2->lock);
				FUNC0(&FUNC12(sk)->udp_portaddr_node,
							 &nhslot2->head);
				nhslot2->count++;
				FUNC8(&nhslot2->lock);
			}

			FUNC9(&hslot->lock);
		}
	}
}