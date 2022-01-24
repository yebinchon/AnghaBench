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
struct nft_regs {int dummy; } ;
struct nft_pktinfo {TYPE_1__* skb; } ;
struct nft_counter_percpu_priv {int /*<<< orphan*/ * counter; } ;
struct nft_counter {int /*<<< orphan*/  packets; int /*<<< orphan*/  bytes; } ;
typedef  int /*<<< orphan*/  seqcount_t ;
struct TYPE_2__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  nft_counter_seq ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC5(struct nft_counter_percpu_priv *priv,
				       struct nft_regs *regs,
				       const struct nft_pktinfo *pkt)
{
	struct nft_counter *this_cpu;
	seqcount_t *myseq;

	FUNC0();
	this_cpu = FUNC2(priv->counter);
	myseq = FUNC2(&nft_counter_seq);

	FUNC3(myseq);

	this_cpu->bytes += pkt->skb->len;
	this_cpu->packets++;

	FUNC4(myseq);
	FUNC1();
}