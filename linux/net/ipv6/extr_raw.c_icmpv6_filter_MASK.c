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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct icmp6hdr {unsigned int icmp6_type; } ;
typedef  unsigned int __u32 ;
struct TYPE_3__ {unsigned int* data; } ;
struct TYPE_4__ {TYPE_1__ filter; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMPV6_HDRLEN ; 
 TYPE_2__* FUNC0 (struct sock const*) ; 
 struct icmp6hdr* FUNC1 (struct sk_buff const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct icmp6hdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff const*) ; 

__attribute__((used)) static int FUNC3(const struct sock *sk, const struct sk_buff *skb)
{
	struct icmp6hdr _hdr;
	const struct icmp6hdr *hdr;

	/* We require only the four bytes of the ICMPv6 header, not any
	 * additional bytes of message body in "struct icmp6hdr".
	 */
	hdr = FUNC1(skb, FUNC2(skb),
				 ICMPV6_HDRLEN, &_hdr);
	if (hdr) {
		const __u32 *data = &FUNC0(sk)->filter.data[0];
		unsigned int type = hdr->icmp6_type;

		return (data[type >> 5] & (1U << (type & 31))) != 0;
	}
	return 1;
}