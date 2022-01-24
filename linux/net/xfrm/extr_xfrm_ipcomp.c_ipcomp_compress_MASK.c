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
typedef  int /*<<< orphan*/  u8 ;
struct xfrm_state {struct ipcomp_data* data; } ;
struct sk_buff {int len; int /*<<< orphan*/ * data; } ;
struct ipcomp_data {int /*<<< orphan*/  tfms; } ;
struct ip_comp_hdr {int dummy; } ;
struct crypto_comp {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int IPCOMP_SCRATCH_SIZE ; 
 int FUNC0 (struct crypto_comp*,int /*<<< orphan*/ *,int const,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  ipcomp_scratches ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 void** FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct xfrm_state *x, struct sk_buff *skb)
{
	struct ipcomp_data *ipcd = x->data;
	const int plen = skb->len;
	int dlen = IPCOMP_SCRATCH_SIZE;
	u8 *start = skb->data;
	struct crypto_comp *tfm;
	u8 *scratch;
	int err;

	FUNC1();
	scratch = *FUNC5(ipcomp_scratches);
	tfm = *FUNC5(ipcd->tfms);
	err = FUNC0(tfm, start, plen, scratch, &dlen);
	if (err)
		goto out;

	if ((dlen + sizeof(struct ip_comp_hdr)) >= plen) {
		err = -EMSGSIZE;
		goto out;
	}

	FUNC3(start + sizeof(struct ip_comp_hdr), scratch, dlen);
	FUNC2();

	FUNC4(skb, dlen + sizeof(struct ip_comp_hdr));
	return 0;

out:
	FUNC2();
	return err;
}