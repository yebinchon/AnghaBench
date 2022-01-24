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
typedef  scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct nf_conn {int /*<<< orphan*/  ct_general; int /*<<< orphan*/  ct_net; } ;
struct net {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
struct TYPE_2__ {scalar_t__ id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ IP_CT_DIR_ORIGINAL ; 
 int /*<<< orphan*/  IP_CT_UNTRACKED ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct nf_conn* FUNC3 (struct sk_buff*,int*) ; 
 scalar_t__ FUNC4 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC5 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC9(struct net *net, struct sk_buff *skb,
				   u16 zone_id, bool force)
{
	enum ip_conntrack_info ctinfo;
	struct nf_conn *ct;

	ct = FUNC3(skb, &ctinfo);
	if (!ct)
		return false;
	if (!FUNC1(net, FUNC8(&ct->ct_net)))
		return false;
	if (FUNC7(ct)->id != zone_id)
		return false;

	/* Force conntrack entry direction. */
	if (force && FUNC0(ctinfo) != IP_CT_DIR_ORIGINAL) {
		if (FUNC4(ct))
			FUNC5(ct);

		FUNC2(&ct->ct_general);
		FUNC6(skb, NULL, IP_CT_UNTRACKED);

		return false;
	}

	return true;
}