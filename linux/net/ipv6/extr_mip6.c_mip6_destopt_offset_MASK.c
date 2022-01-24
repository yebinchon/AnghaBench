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
typedef  int u8 ;
typedef  int u16 ;
struct xfrm_state {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ipv6hdr {int dummy; } ;
struct ipv6_opt_hdr {int nexthdr; } ;
struct TYPE_2__ {int nexthdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPV6_TLV_HAO ; 
#define  NEXTHDR_DEST 130 
#define  NEXTHDR_HOP 129 
#define  NEXTHDR_ROUTING 128 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct ipv6_opt_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 unsigned char* FUNC4 (struct sk_buff*) ; 
 unsigned char* FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(struct xfrm_state *x, struct sk_buff *skb,
			       u8 **nexthdr)
{
	u16 offset = sizeof(struct ipv6hdr);
	struct ipv6_opt_hdr *exthdr =
				   (struct ipv6_opt_hdr *)(FUNC1(skb) + 1);
	const unsigned char *nh = FUNC4(skb);
	unsigned int packet_len = FUNC5(skb) -
		FUNC4(skb);
	int found_rhdr = 0;

	*nexthdr = &FUNC1(skb)->nexthdr;

	while (offset + 1 <= packet_len) {

		switch (**nexthdr) {
		case NEXTHDR_HOP:
			break;
		case NEXTHDR_ROUTING:
			found_rhdr = 1;
			break;
		case NEXTHDR_DEST:
			/*
			 * HAO MUST NOT appear more than once.
			 * XXX: It is better to try to find by the end of
			 * XXX: packet if HAO exists.
			 */
			if (FUNC0(skb, offset, IPV6_TLV_HAO) >= 0) {
				FUNC3("mip6: hao exists already, override\n");
				return offset;
			}

			if (found_rhdr)
				return offset;

			break;
		default:
			return offset;
		}

		offset += FUNC2(exthdr);
		*nexthdr = &exthdr->nexthdr;
		exthdr = (struct ipv6_opt_hdr *)(nh + offset);
	}

	return offset;
}