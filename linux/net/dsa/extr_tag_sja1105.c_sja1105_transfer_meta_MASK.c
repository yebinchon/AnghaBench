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
struct sk_buff {int dummy; } ;
struct sja1105_meta {int /*<<< orphan*/  tstamp; int /*<<< orphan*/  dmac_byte_4; int /*<<< orphan*/  dmac_byte_3; } ;
struct ethhdr {int /*<<< orphan*/ * h_dest; } ;
struct TYPE_2__ {int /*<<< orphan*/  meta_tstamp; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 struct ethhdr* FUNC1 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC2(struct sk_buff *skb,
				  const struct sja1105_meta *meta)
{
	struct ethhdr *hdr = FUNC1(skb);

	hdr->h_dest[3] = meta->dmac_byte_3;
	hdr->h_dest[4] = meta->dmac_byte_4;
	FUNC0(skb)->meta_tstamp = meta->tstamp;
}