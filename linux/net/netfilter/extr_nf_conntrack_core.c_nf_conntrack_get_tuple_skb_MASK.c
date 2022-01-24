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
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dir; } ;
struct TYPE_4__ {TYPE_1__ dst; } ;
struct nf_conntrack_tuple_hash {TYPE_2__ tuple; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  NFPROTO_IPV4 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nf_conntrack_tuple*,struct nf_conntrack_tuple const*,int) ; 
 struct nf_conntrack_tuple_hash* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nf_conntrack_tuple*) ; 
 struct nf_conn* FUNC4 (struct sk_buff const*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  FUNC6 (struct nf_conn*) ; 
 struct nf_conntrack_tuple* FUNC7 (struct nf_conn*,int) ; 
 struct nf_conn* FUNC8 (struct nf_conntrack_tuple_hash const*) ; 
 int /*<<< orphan*/  nf_ct_zone_dflt ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff const*) ; 

__attribute__((used)) static bool FUNC10(struct nf_conntrack_tuple *dst_tuple,
				       const struct sk_buff *skb)
{
	const struct nf_conntrack_tuple *src_tuple;
	const struct nf_conntrack_tuple_hash *hash;
	struct nf_conntrack_tuple srctuple;
	enum ip_conntrack_info ctinfo;
	struct nf_conn *ct;

	ct = FUNC4(skb, &ctinfo);
	if (ct) {
		src_tuple = FUNC7(ct, FUNC0(ctinfo));
		FUNC2(dst_tuple, src_tuple, sizeof(*dst_tuple));
		return true;
	}

	if (!FUNC5(skb, FUNC9(skb),
			       NFPROTO_IPV4, FUNC1(skb->dev),
			       &srctuple))
		return false;

	hash = FUNC3(FUNC1(skb->dev),
				     &nf_ct_zone_dflt,
				     &srctuple);
	if (!hash)
		return false;

	ct = FUNC8(hash);
	src_tuple = FUNC7(ct, !hash->tuple.dst.dir);
	FUNC2(dst_tuple, src_tuple, sizeof(*dst_tuple));
	FUNC6(ct);

	return true;
}