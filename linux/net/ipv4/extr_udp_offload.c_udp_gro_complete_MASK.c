#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  udp_lookup_t ;
struct udphdr {scalar_t__ check; int /*<<< orphan*/  dest; int /*<<< orphan*/  source; int /*<<< orphan*/  len; } ;
struct sock {int dummy; } ;
struct sk_buff {int encapsulation; scalar_t__ remcsum_offload; scalar_t__ data; scalar_t__ len; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_4__ {int /*<<< orphan*/  gso_type; } ;
struct TYPE_3__ {int (* gro_complete ) (struct sock*,struct sk_buff*,int) ;scalar_t__ gro_enabled; } ;

/* Variables and functions */
 int ENOSYS ; 
 struct sock* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SKB_GSO_TUNNEL_REMCSUM ; 
 int /*<<< orphan*/  SKB_GSO_UDP_TUNNEL ; 
 int /*<<< orphan*/  SKB_GSO_UDP_TUNNEL_CSUM ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_2__* FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct sock*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  udp4_lib_lookup_skb ; 
 int /*<<< orphan*/  udp6_lib_lookup_skb ; 
 int FUNC6 (struct sk_buff*) ; 
 TYPE_1__* FUNC7 (struct sock*) ; 

int FUNC8(struct sk_buff *skb, int nhoff,
		     udp_lookup_t lookup)
{
	__be16 newlen = FUNC1(skb->len - nhoff);
	struct udphdr *uh = (struct udphdr *)(skb->data + nhoff);
	int err = -ENOSYS;
	struct sock *sk;

	uh->len = newlen;

	FUNC2();
	sk = FUNC0(lookup, udp6_lib_lookup_skb,
				udp4_lib_lookup_skb, skb, uh->source, uh->dest);
	if (sk && FUNC7(sk)->gro_enabled) {
		err = FUNC6(skb);
	} else if (sk && FUNC7(sk)->gro_complete) {
		FUNC4(skb)->gso_type = uh->check ? SKB_GSO_UDP_TUNNEL_CSUM
					: SKB_GSO_UDP_TUNNEL;

		/* Set encapsulation before calling into inner gro_complete()
		 * functions to make them set up the inner offsets.
		 */
		skb->encapsulation = 1;
		err = FUNC7(sk)->gro_complete(sk, skb,
				nhoff + sizeof(struct udphdr));
	}
	FUNC3();

	if (skb->remcsum_offload)
		FUNC4(skb)->gso_type |= SKB_GSO_TUNNEL_REMCSUM;

	return err;
}