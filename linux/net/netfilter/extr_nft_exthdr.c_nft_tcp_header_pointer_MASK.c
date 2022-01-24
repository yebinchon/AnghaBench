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
struct tcphdr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  thoff; } ;
struct nft_pktinfo {scalar_t__ tprot; TYPE_1__ xt; int /*<<< orphan*/  skb; int /*<<< orphan*/  tprot_set; } ;

/* Variables and functions */
 scalar_t__ IPPROTO_TCP ; 
 unsigned int FUNC0 (struct tcphdr*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,void*) ; 

__attribute__((used)) static void *
FUNC2(const struct nft_pktinfo *pkt,
		       unsigned int len, void *buffer, unsigned int *tcphdr_len)
{
	struct tcphdr *tcph;

	if (!pkt->tprot_set || pkt->tprot != IPPROTO_TCP)
		return NULL;

	tcph = FUNC1(pkt->skb, pkt->xt.thoff, sizeof(*tcph), buffer);
	if (!tcph)
		return NULL;

	*tcphdr_len = FUNC0(tcph);
	if (*tcphdr_len < sizeof(*tcph) || *tcphdr_len > len)
		return NULL;

	return FUNC1(pkt->skb, pkt->xt.thoff, *tcphdr_len, buffer);
}