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
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct flow_dissector_key_ct {int /*<<< orphan*/ * ct_labels; int /*<<< orphan*/  ct_mark; int /*<<< orphan*/  ct_zone; int /*<<< orphan*/  ct_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_NF_CONNTRACK ; 
 int /*<<< orphan*/  CONFIG_NF_CONNTRACK_LABELS ; 
 int /*<<< orphan*/  CONFIG_NF_CONNTRACK_MARK ; 
 int /*<<< orphan*/  CONFIG_NF_CONNTRACK_ZONES ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 size_t TCA_FLOWER_KEY_CT_LABELS ; 
 int /*<<< orphan*/  TCA_FLOWER_KEY_CT_LABELS_MASK ; 
 size_t TCA_FLOWER_KEY_CT_MARK ; 
 int /*<<< orphan*/  TCA_FLOWER_KEY_CT_MARK_MASK ; 
 size_t TCA_FLOWER_KEY_CT_STATE ; 
 int /*<<< orphan*/  TCA_FLOWER_KEY_CT_STATE_MASK ; 
 size_t TCA_FLOWER_KEY_CT_ZONE ; 
 int /*<<< orphan*/  TCA_FLOWER_KEY_CT_ZONE_MASK ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr**,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct nlattr **tb,
			 struct flow_dissector_key_ct *key,
			 struct flow_dissector_key_ct *mask,
			 struct netlink_ext_ack *extack)
{
	if (tb[TCA_FLOWER_KEY_CT_STATE]) {
		if (!FUNC0(CONFIG_NF_CONNTRACK)) {
			FUNC1(extack, "Conntrack isn't enabled");
			return -EOPNOTSUPP;
		}
		FUNC2(tb, &key->ct_state, TCA_FLOWER_KEY_CT_STATE,
			       &mask->ct_state, TCA_FLOWER_KEY_CT_STATE_MASK,
			       sizeof(key->ct_state));
	}
	if (tb[TCA_FLOWER_KEY_CT_ZONE]) {
		if (!FUNC0(CONFIG_NF_CONNTRACK_ZONES)) {
			FUNC1(extack, "Conntrack zones isn't enabled");
			return -EOPNOTSUPP;
		}
		FUNC2(tb, &key->ct_zone, TCA_FLOWER_KEY_CT_ZONE,
			       &mask->ct_zone, TCA_FLOWER_KEY_CT_ZONE_MASK,
			       sizeof(key->ct_zone));
	}
	if (tb[TCA_FLOWER_KEY_CT_MARK]) {
		if (!FUNC0(CONFIG_NF_CONNTRACK_MARK)) {
			FUNC1(extack, "Conntrack mark isn't enabled");
			return -EOPNOTSUPP;
		}
		FUNC2(tb, &key->ct_mark, TCA_FLOWER_KEY_CT_MARK,
			       &mask->ct_mark, TCA_FLOWER_KEY_CT_MARK_MASK,
			       sizeof(key->ct_mark));
	}
	if (tb[TCA_FLOWER_KEY_CT_LABELS]) {
		if (!FUNC0(CONFIG_NF_CONNTRACK_LABELS)) {
			FUNC1(extack, "Conntrack labels aren't enabled");
			return -EOPNOTSUPP;
		}
		FUNC2(tb, key->ct_labels, TCA_FLOWER_KEY_CT_LABELS,
			       mask->ct_labels, TCA_FLOWER_KEY_CT_LABELS_MASK,
			       sizeof(key->ct_labels));
	}

	return 0;
}