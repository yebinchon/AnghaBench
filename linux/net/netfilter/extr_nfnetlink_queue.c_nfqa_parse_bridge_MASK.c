#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nlattr {int dummy; } ;
struct nf_queue_entry {TYPE_1__* skb; } ;
struct TYPE_3__ {int network_header; int mac_header; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t NFQA_L2HDR ; 
 size_t NFQA_VLAN ; 
 int /*<<< orphan*/  NFQA_VLAN_MAX ; 
 size_t NFQA_VLAN_PROTO ; 
 size_t NFQA_VLAN_TCI ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nfqa_vlan_policy ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*) ; 
 int FUNC4 (struct nlattr const* const) ; 
 int FUNC5 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr const* const,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(struct nf_queue_entry *entry,
			     const struct nlattr * const nfqa[])
{
	if (nfqa[NFQA_VLAN]) {
		struct nlattr *tb[NFQA_VLAN_MAX + 1];
		int err;

		err = FUNC5(tb, NFQA_VLAN_MAX,
						  nfqa[NFQA_VLAN],
						  nfqa_vlan_policy, NULL);
		if (err < 0)
			return err;

		if (!tb[NFQA_VLAN_TCI] || !tb[NFQA_VLAN_PROTO])
			return -EINVAL;

		FUNC0(entry->skb,
			FUNC3(tb[NFQA_VLAN_PROTO]),
			FUNC6(FUNC3(tb[NFQA_VLAN_TCI])));
	}

	if (nfqa[NFQA_L2HDR]) {
		int mac_header_len = entry->skb->network_header -
			entry->skb->mac_header;

		if (mac_header_len != FUNC4(nfqa[NFQA_L2HDR]))
			return -EINVAL;
		else if (mac_header_len > 0)
			FUNC1(FUNC7(entry->skb),
			       FUNC2(nfqa[NFQA_L2HDR]),
			       mac_header_len);
	}

	return 0;
}