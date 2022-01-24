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
struct TYPE_2__ {void* dst; void* src; } ;
struct sw_flow_key {TYPE_1__ tp; } ;
struct sk_buff {int dummy; } ;
struct sctphdr {int checksum; void* dest; void* source; } ;
struct ovs_key_sctp {int /*<<< orphan*/  sctp_dst; int /*<<< orphan*/  sctp_src; } ;
typedef  int __le32 ;

/* Variables and functions */
 void* FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sk_buff*,unsigned int) ; 
 struct sctphdr* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*,unsigned int) ; 
 unsigned int FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, struct sw_flow_key *flow_key,
		    const struct ovs_key_sctp *key,
		    const struct ovs_key_sctp *mask)
{
	unsigned int sctphoff = FUNC5(skb);
	struct sctphdr *sh;
	__le32 old_correct_csum, new_csum, old_csum;
	int err;

	err = FUNC4(skb, sctphoff + sizeof(struct sctphdr));
	if (FUNC6(err))
		return err;

	sh = FUNC2(skb);
	old_csum = sh->checksum;
	old_correct_csum = FUNC1(skb, sctphoff);

	sh->source = FUNC0(sh->source, key->sctp_src, mask->sctp_src);
	sh->dest = FUNC0(sh->dest, key->sctp_dst, mask->sctp_dst);

	new_csum = FUNC1(skb, sctphoff);

	/* Carry any checksum errors through. */
	sh->checksum = old_csum ^ old_correct_csum ^ new_csum;

	FUNC3(skb);
	flow_key->tp.src = sh->source;
	flow_key->tp.dst = sh->dest;

	return 0;
}