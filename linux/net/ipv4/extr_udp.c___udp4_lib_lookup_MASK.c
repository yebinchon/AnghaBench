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
struct udp_table {unsigned int mask; struct udp_hslot* hash2; } ;
struct udp_hslot {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  INADDR_ANY ; 
 scalar_t__ FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct net*,int /*<<< orphan*/ ,unsigned short) ; 
 unsigned short FUNC3 (int /*<<< orphan*/ ) ; 
 struct sock* FUNC4 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned short,int,int,struct udp_hslot*,struct sk_buff*) ; 

struct sock *FUNC5(struct net *net, __be32 saddr,
		__be16 sport, __be32 daddr, __be16 dport, int dif,
		int sdif, struct udp_table *udptable, struct sk_buff *skb)
{
	struct sock *result;
	unsigned short hnum = FUNC3(dport);
	unsigned int hash2, slot2;
	struct udp_hslot *hslot2;

	hash2 = FUNC2(net, daddr, hnum);
	slot2 = hash2 & udptable->mask;
	hslot2 = &udptable->hash2[slot2];

	result = FUNC4(net, saddr, sport,
				  daddr, hnum, dif, sdif,
				  hslot2, skb);
	if (!result) {
		hash2 = FUNC2(net, FUNC1(INADDR_ANY), hnum);
		slot2 = hash2 & udptable->mask;
		hslot2 = &udptable->hash2[slot2];

		result = FUNC4(net, saddr, sport,
					  FUNC1(INADDR_ANY), hnum, dif, sdif,
					  hslot2, skb);
	}
	if (FUNC0(result))
		return NULL;
	return result;
}