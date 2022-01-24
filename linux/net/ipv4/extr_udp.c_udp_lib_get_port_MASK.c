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
struct udp_table {int mask; unsigned short log; } ;
struct udp_hslot {int count; int /*<<< orphan*/  lock; int /*<<< orphan*/  head; } ;
struct sock {scalar_t__ sk_family; scalar_t__ sk_reuseport; TYPE_3__* sk_prot; } ;
struct net {int dummy; } ;
struct TYPE_8__ {unsigned short inet_num; } ;
struct TYPE_5__ {struct udp_table* udp_table; } ;
struct TYPE_7__ {TYPE_1__ h; } ;
struct TYPE_6__ {unsigned short udp_portaddr_hash; unsigned short udp_port_hash; int /*<<< orphan*/  udp_portaddr_node; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  CONFIG_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PORTS_PER_CHAIN ; 
 int /*<<< orphan*/  SOCK_RCU_FREE ; 
 int /*<<< orphan*/ * bitmap ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct net*,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct net*,unsigned short) ; 
 TYPE_4__* FUNC8 (struct sock*) ; 
 unsigned int FUNC9 () ; 
 int FUNC10 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct sock*) ; 
 struct net* FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct net*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (unsigned short,int /*<<< orphan*/ *) ; 
 struct udp_hslot* FUNC21 (struct udp_table*,struct net*,unsigned short) ; 
 struct udp_hslot* FUNC22 (struct udp_table*,unsigned int) ; 
 scalar_t__ FUNC23 (struct net*,unsigned short,struct udp_hslot*,int /*<<< orphan*/ *,struct sock*,unsigned short) ; 
 int FUNC24 (struct net*,unsigned short,struct udp_hslot*,struct sock*) ; 
 scalar_t__ FUNC25 (struct sock*,struct udp_hslot*) ; 
 TYPE_2__* FUNC26 (struct sock*) ; 

int FUNC27(struct sock *sk, unsigned short snum,
		     unsigned int hash2_nulladdr)
{
	struct udp_hslot *hslot, *hslot2;
	struct udp_table *udptable = sk->sk_prot->h.udp_table;
	int    error = 1;
	struct net *net = FUNC13(sk);

	if (!snum) {
		int low, high, remaining;
		unsigned int rand;
		unsigned short first, last;
		FUNC0(bitmap, PORTS_PER_CHAIN);

		FUNC6(net, &low, &high);
		remaining = (high - low) + 1;

		rand = FUNC9();
		first = FUNC10(rand, remaining) + low;
		/*
		 * force rand to be an odd multiple of UDP_HTABLE_SIZE
		 */
		rand = (rand | 1) * (udptable->mask + 1);
		last = first + udptable->mask + 1;
		do {
			hslot = FUNC21(udptable, net, first);
			FUNC2(bitmap, PORTS_PER_CHAIN);
			FUNC17(&hslot->lock);
			FUNC23(net, snum, hslot, bitmap, sk,
					    udptable->log);

			snum = first;
			/*
			 * Iterate on all possible values of snum for this hash.
			 * Using steps of an odd multiple of UDP_HTABLE_SIZE
			 * give us randomization and full range coverage.
			 */
			do {
				if (low <= snum && snum <= high &&
				    !FUNC20(snum >> udptable->log, bitmap) &&
				    !FUNC7(net, snum))
					goto found;
				snum += rand;
			} while (snum != first);
			FUNC19(&hslot->lock);
			FUNC3();
		} while (++first != last);
		goto fail;
	} else {
		hslot = FUNC21(udptable, net, snum);
		FUNC17(&hslot->lock);
		if (hslot->count > 10) {
			int exist;
			unsigned int slot2 = FUNC26(sk)->udp_portaddr_hash ^ snum;

			slot2          &= udptable->mask;
			hash2_nulladdr &= udptable->mask;

			hslot2 = FUNC22(udptable, slot2);
			if (hslot->count < hslot2->count)
				goto scan_primary_hash;

			exist = FUNC24(net, snum, hslot2, sk);
			if (!exist && (hash2_nulladdr != slot2)) {
				hslot2 = FUNC22(udptable, hash2_nulladdr);
				exist = FUNC24(net, snum, hslot2,
							     sk);
			}
			if (exist)
				goto fail_unlock;
			else
				goto found;
		}
scan_primary_hash:
		if (FUNC23(net, snum, hslot, NULL, sk, 0))
			goto fail_unlock;
	}
found:
	FUNC8(sk)->inet_num = snum;
	FUNC26(sk)->udp_port_hash = snum;
	FUNC26(sk)->udp_portaddr_hash ^= snum;
	if (FUNC12(sk)) {
		if (sk->sk_reuseport &&
		    FUNC25(sk, hslot)) {
			FUNC8(sk)->inet_num = 0;
			FUNC26(sk)->udp_port_hash = 0;
			FUNC26(sk)->udp_portaddr_hash ^= snum;
			goto fail_unlock;
		}

		FUNC11(sk, &hslot->head);
		hslot->count++;
		FUNC14(FUNC13(sk), sk->sk_prot, 1);

		hslot2 = FUNC22(udptable, FUNC26(sk)->udp_portaddr_hash);
		FUNC16(&hslot2->lock);
		if (FUNC1(CONFIG_IPV6) && sk->sk_reuseport &&
		    sk->sk_family == AF_INET6)
			FUNC5(&FUNC26(sk)->udp_portaddr_node,
					   &hslot2->head);
		else
			FUNC4(&FUNC26(sk)->udp_portaddr_node,
					   &hslot2->head);
		hslot2->count++;
		FUNC18(&hslot2->lock);
	}
	FUNC15(sk, SOCK_RCU_FREE);
	error = 0;
fail_unlock:
	FUNC19(&hslot->lock);
fail:
	return error;
}