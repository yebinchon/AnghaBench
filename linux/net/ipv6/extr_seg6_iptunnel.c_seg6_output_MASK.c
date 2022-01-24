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
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  mark; } ;
struct seg6_lwt {int /*<<< orphan*/  cache; } ;
struct net {int dummy; } ;
struct ipv6hdr {int /*<<< orphan*/  nexthdr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct flowi6 {int /*<<< orphan*/  saddr; int /*<<< orphan*/  flowi6_proto; int /*<<< orphan*/  flowi6_mark; int /*<<< orphan*/  flowlabel; int /*<<< orphan*/  daddr; } ;
struct dst_entry {int error; int /*<<< orphan*/  dev; int /*<<< orphan*/  lwtstate; } ;
typedef  int /*<<< orphan*/  fl6 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct dst_entry* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct dst_entry*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct net*,struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct ipv6hdr*) ; 
 struct dst_entry* FUNC6 (struct net*,int /*<<< orphan*/ *,struct flowi6*) ; 
 struct ipv6hdr* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct flowi6*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (struct sk_buff*) ; 
 struct seg6_lwt* FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct dst_entry* FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,struct dst_entry*) ; 
 scalar_t__ FUNC18 (int) ; 

__attribute__((used)) static int FUNC19(struct net *net, struct sock *sk, struct sk_buff *skb)
{
	struct dst_entry *orig_dst = FUNC15(skb);
	struct dst_entry *dst = NULL;
	struct seg6_lwt *slwt;
	int err = -EINVAL;

	err = FUNC12(skb);
	if (FUNC18(err))
		goto drop;

	slwt = FUNC13(orig_dst->lwtstate);

	FUNC10();
	dst = FUNC1(&slwt->cache);
	FUNC11();

	if (FUNC18(!dst)) {
		struct ipv6hdr *hdr = FUNC7(skb);
		struct flowi6 fl6;

		FUNC9(&fl6, 0, sizeof(fl6));
		fl6.daddr = hdr->daddr;
		fl6.saddr = hdr->saddr;
		fl6.flowlabel = FUNC5(hdr);
		fl6.flowi6_mark = skb->mark;
		fl6.flowi6_proto = hdr->nexthdr;

		dst = FUNC6(net, NULL, &fl6);
		if (dst->error) {
			err = dst->error;
			FUNC4(dst);
			goto drop;
		}

		FUNC10();
		FUNC2(&slwt->cache, dst, &fl6.saddr);
		FUNC11();
	}

	FUNC16(skb);
	FUNC17(skb, dst);

	err = FUNC14(skb, FUNC0(dst->dev));
	if (FUNC18(err))
		goto drop;

	return FUNC3(net, sk, skb);
drop:
	FUNC8(skb);
	return err;
}