#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
struct TYPE_6__ {void* path_hdr; void* ttl; void* flags; } ;
struct TYPE_8__ {int /*<<< orphan*/  context; TYPE_2__ base; } ;
struct sw_flow_key {TYPE_4__ nsh; } ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  path_hdr; int /*<<< orphan*/  ttl; int /*<<< orphan*/  flags; } ;
struct ovs_key_nsh {int /*<<< orphan*/ * context; TYPE_1__ base; } ;
struct TYPE_7__ {void** context; } ;
struct nshhdr {void* path_hdr; int mdtype; TYPE_3__ md1; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ NSH_BASE_HDR_LEN ; 
 int NSH_MD1_CONTEXT_SIZE ; 
#define  NSH_M_TYPE1 129 
#define  NSH_M_TYPE2 128 
 void* FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void**,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (struct nshhdr*) ; 
 void* FUNC4 (struct nshhdr*) ; 
 struct nshhdr* FUNC5 (struct sk_buff*) ; 
 size_t FUNC6 (struct nshhdr*) ; 
 int FUNC7 (struct nlattr const*,struct ovs_key_nsh*,struct ovs_key_nsh*) ; 
 int /*<<< orphan*/  FUNC8 (struct nshhdr*,void*,void*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,scalar_t__) ; 
 int FUNC10 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,struct nshhdr*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,struct nshhdr*,size_t) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(struct sk_buff *skb, struct sw_flow_key *flow_key,
		   const struct nlattr *a)
{
	struct nshhdr *nh;
	size_t length;
	int err;
	u8 flags;
	u8 ttl;
	int i;

	struct ovs_key_nsh key;
	struct ovs_key_nsh mask;

	err = FUNC7(a, &key, &mask);
	if (err)
		return err;

	/* Make sure the NSH base header is there */
	if (!FUNC9(skb, FUNC11(skb) + NSH_BASE_HDR_LEN))
		return -ENOMEM;

	nh = FUNC5(skb);
	length = FUNC6(nh);

	/* Make sure the whole NSH header is there */
	err = FUNC10(skb, FUNC11(skb) +
				       length);
	if (FUNC14(err))
		return err;

	nh = FUNC5(skb);
	FUNC12(skb, nh, length);
	flags = FUNC3(nh);
	flags = FUNC0(flags, key.base.flags, mask.base.flags);
	flow_key->nsh.base.flags = flags;
	ttl = FUNC4(nh);
	ttl = FUNC0(ttl, key.base.ttl, mask.base.ttl);
	flow_key->nsh.base.ttl = ttl;
	FUNC8(nh, flags, ttl);
	nh->path_hdr = FUNC0(nh->path_hdr, key.base.path_hdr,
				  mask.base.path_hdr);
	flow_key->nsh.base.path_hdr = nh->path_hdr;
	switch (nh->mdtype) {
	case NSH_M_TYPE1:
		for (i = 0; i < NSH_MD1_CONTEXT_SIZE; i++) {
			nh->md1.context[i] =
			    FUNC0(nh->md1.context[i], key.context[i],
				       mask.context[i]);
		}
		FUNC1(flow_key->nsh.context, nh->md1.context,
		       sizeof(nh->md1.context));
		break;
	case NSH_M_TYPE2:
		FUNC2(flow_key->nsh.context, 0,
		       sizeof(flow_key->nsh.context));
		break;
	default:
		return -EINVAL;
	}
	FUNC13(skb, nh, length);
	return 0;
}