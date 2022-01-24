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
struct flow_dissector_key_mpls {scalar_t__ mpls_bos; scalar_t__ mpls_label; scalar_t__ mpls_tc; scalar_t__ mpls_ttl; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCA_FLOWER_KEY_MPLS_BOS ; 
 int /*<<< orphan*/  TCA_FLOWER_KEY_MPLS_LABEL ; 
 int /*<<< orphan*/  TCA_FLOWER_KEY_MPLS_TC ; 
 int /*<<< orphan*/  TCA_FLOWER_KEY_MPLS_TTL ; 
 int /*<<< orphan*/  FUNC0 (struct flow_dissector_key_mpls*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb,
			    struct flow_dissector_key_mpls *mpls_key,
			    struct flow_dissector_key_mpls *mpls_mask)
{
	int err;

	if (!FUNC0(mpls_mask, 0, sizeof(*mpls_mask)))
		return 0;
	if (mpls_mask->mpls_ttl) {
		err = FUNC2(skb, TCA_FLOWER_KEY_MPLS_TTL,
				 mpls_key->mpls_ttl);
		if (err)
			return err;
	}
	if (mpls_mask->mpls_tc) {
		err = FUNC2(skb, TCA_FLOWER_KEY_MPLS_TC,
				 mpls_key->mpls_tc);
		if (err)
			return err;
	}
	if (mpls_mask->mpls_label) {
		err = FUNC1(skb, TCA_FLOWER_KEY_MPLS_LABEL,
				  mpls_key->mpls_label);
		if (err)
			return err;
	}
	if (mpls_mask->mpls_bos) {
		err = FUNC2(skb, TCA_FLOWER_KEY_MPLS_BOS,
				 mpls_key->mpls_bos);
		if (err)
			return err;
	}
	return 0;
}