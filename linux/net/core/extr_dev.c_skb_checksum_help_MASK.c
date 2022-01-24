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
struct sk_buff {scalar_t__ ip_summed; scalar_t__ data; scalar_t__ csum_offset; scalar_t__ len; } ;
typedef  int /*<<< orphan*/  __wsum ;
typedef  int /*<<< orphan*/  __sum16 ;
struct TYPE_2__ {int /*<<< orphan*/  gso_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CHECKSUM_COMPLETE ; 
 scalar_t__ CHECKSUM_NONE ; 
 int /*<<< orphan*/  CSUM_MANGLED_0 ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 int FUNC9 (struct sk_buff*) ; 
 TYPE_1__* FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

int FUNC13(struct sk_buff *skb)
{
	__wsum csum;
	int ret = 0, offset;

	if (skb->ip_summed == CHECKSUM_COMPLETE)
		goto out_set_summed;

	if (FUNC12(FUNC10(skb)->gso_size)) {
		FUNC11(skb);
		return -EINVAL;
	}

	/* Before computing a checksum, we should make sure no frag could
	 * be modified by an external entity : checksum could be wrong.
	 */
	if (FUNC8(skb)) {
		ret = FUNC1(skb);
		if (ret)
			goto out;
	}

	offset = FUNC5(skb);
	FUNC0(offset >= FUNC9(skb));
	csum = FUNC4(skb, offset, skb->len - offset, 0);

	offset += skb->csum_offset;
	FUNC0(offset + sizeof(__sum16) > FUNC9(skb));

	if (FUNC7(skb) &&
	    !FUNC6(skb, offset + sizeof(__sum16))) {
		ret = FUNC3(skb, 0, 0, GFP_ATOMIC);
		if (ret)
			goto out;
	}

	*(__sum16 *)(skb->data + offset) = FUNC2(csum) ?: CSUM_MANGLED_0;
out_set_summed:
	skb->ip_summed = CHECKSUM_NONE;
out:
	return ret;
}