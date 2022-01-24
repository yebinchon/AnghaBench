#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {int dummy; } ;
struct sctphdr {scalar_t__ checksum; } ;
struct net {int dummy; } ;
typedef  scalar_t__ __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_MIB_CHECKSUMERRORS ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sctphdr* FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static inline int FUNC3(struct net *net, struct sk_buff *skb)
{
	struct sctphdr *sh = FUNC2(skb);
	__le32 cmp = sh->checksum;
	__le32 val = FUNC1(skb, 0);

	if (val != cmp) {
		/* CRC failure, dump it. */
		FUNC0(net, SCTP_MIB_CHECKSUMERRORS);
		return -1;
	}
	return 0;
}