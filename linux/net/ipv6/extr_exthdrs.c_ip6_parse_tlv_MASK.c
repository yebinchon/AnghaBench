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
struct tlvtype_proc {unsigned char const type; int (* func ) (struct sk_buff*,int) ;} ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
#define  IPV6_TLV_PAD1 129 
#define  IPV6_TLV_PADN 128 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 unsigned char* FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*) ; 
 int* FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 int FUNC7 (struct sk_buff*,int) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static bool FUNC9(const struct tlvtype_proc *procs,
			  struct sk_buff *skb,
			  int max_count)
{
	int len = (FUNC5(skb)[1] + 1) << 3;
	const unsigned char *nh = FUNC3(skb);
	int off = FUNC4(skb);
	const struct tlvtype_proc *curr;
	bool disallow_unknowns = false;
	int tlv_count = 0;
	int padlen = 0;

	if (FUNC8(max_count < 0)) {
		disallow_unknowns = true;
		max_count = -max_count;
	}

	if (FUNC6(skb) + len > FUNC2(skb))
		goto bad;

	off += 2;
	len -= 2;

	while (len > 0) {
		int optlen = nh[off + 1] + 2;
		int i;

		switch (nh[off]) {
		case IPV6_TLV_PAD1:
			optlen = 1;
			padlen++;
			if (padlen > 7)
				goto bad;
			break;

		case IPV6_TLV_PADN:
			/* RFC 2460 states that the purpose of PadN is
			 * to align the containing header to multiples
			 * of 8. 7 is therefore the highest valid value.
			 * See also RFC 4942, Section 2.1.9.5.
			 */
			padlen += optlen;
			if (padlen > 7)
				goto bad;
			/* RFC 4942 recommends receiving hosts to
			 * actively check PadN payload to contain
			 * only zeroes.
			 */
			for (i = 2; i < optlen; i++) {
				if (nh[off + i] != 0)
					goto bad;
			}
			break;

		default: /* Other TLV code so scan list */
			if (optlen > len)
				goto bad;

			tlv_count++;
			if (tlv_count > max_count)
				goto bad;

			for (curr = procs; curr->type >= 0; curr++) {
				if (curr->type == nh[off]) {
					/* type specific length/alignment
					   checks will be performed in the
					   func(). */
					if (curr->func(skb, off) == false)
						return false;
					break;
				}
			}
			if (curr->type < 0 &&
			    !FUNC0(skb, off, disallow_unknowns))
				return false;

			padlen = 0;
			break;
		}
		off += optlen;
		len -= optlen;
	}

	if (len == 0)
		return true;
bad:
	FUNC1(skb);
	return false;
}