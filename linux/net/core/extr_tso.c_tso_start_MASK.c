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
struct tso_t {size_t next_frag_idx; int ipv6; scalar_t__ size; scalar_t__ data; int /*<<< orphan*/  tcp_seq; int /*<<< orphan*/  ip_id; } ;
struct sk_buff {scalar_t__ data; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
struct TYPE_5__ {size_t nr_frags; int /*<<< orphan*/ * frags; } ;
struct TYPE_4__ {int /*<<< orphan*/  seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 TYPE_2__* FUNC7 (struct sk_buff*) ; 
 int FUNC8 (struct sk_buff*) ; 
 TYPE_1__* FUNC9 (struct sk_buff*) ; 
 int FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 

void FUNC12(struct sk_buff *skb, struct tso_t *tso)
{
	int hdr_len = FUNC8(skb) + FUNC10(skb);

	tso->ip_id = FUNC3(FUNC1(skb)->id);
	tso->tcp_seq = FUNC2(FUNC9(skb)->seq);
	tso->next_frag_idx = 0;
	tso->ipv6 = FUNC11(skb) == FUNC0(ETH_P_IPV6);

	/* Build first data */
	tso->size = FUNC6(skb) - hdr_len;
	tso->data = skb->data + hdr_len;
	if ((tso->size == 0) &&
	    (tso->next_frag_idx < FUNC7(skb)->nr_frags)) {
		skb_frag_t *frag = &FUNC7(skb)->frags[tso->next_frag_idx];

		/* Move to next segment */
		tso->size = FUNC5(frag);
		tso->data = FUNC4(frag);
		tso->next_frag_idx++;
	}
}