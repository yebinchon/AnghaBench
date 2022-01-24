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
struct flow_dissector_key_ct {int /*<<< orphan*/  ct_labels; int /*<<< orphan*/  ct_mark; int /*<<< orphan*/  ct_zone; int /*<<< orphan*/  ct_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_NF_CONNTRACK ; 
 int /*<<< orphan*/  CONFIG_NF_CONNTRACK_LABELS ; 
 int /*<<< orphan*/  CONFIG_NF_CONNTRACK_MARK ; 
 int /*<<< orphan*/  CONFIG_NF_CONNTRACK_ZONES ; 
 int EMSGSIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCA_FLOWER_KEY_CT_LABELS ; 
 int /*<<< orphan*/  TCA_FLOWER_KEY_CT_LABELS_MASK ; 
 int /*<<< orphan*/  TCA_FLOWER_KEY_CT_MARK ; 
 int /*<<< orphan*/  TCA_FLOWER_KEY_CT_MARK_MASK ; 
 int /*<<< orphan*/  TCA_FLOWER_KEY_CT_STATE ; 
 int /*<<< orphan*/  TCA_FLOWER_KEY_CT_STATE_MASK ; 
 int /*<<< orphan*/  TCA_FLOWER_KEY_CT_ZONE ; 
 int /*<<< orphan*/  TCA_FLOWER_KEY_CT_ZONE_MASK ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct sk_buff *skb,
			  struct flow_dissector_key_ct *key,
			  struct flow_dissector_key_ct *mask)
{
	if (FUNC0(CONFIG_NF_CONNTRACK) &&
	    FUNC1(skb, &key->ct_state, TCA_FLOWER_KEY_CT_STATE,
			    &mask->ct_state, TCA_FLOWER_KEY_CT_STATE_MASK,
			    sizeof(key->ct_state)))
		goto nla_put_failure;

	if (FUNC0(CONFIG_NF_CONNTRACK_ZONES) &&
	    FUNC1(skb, &key->ct_zone, TCA_FLOWER_KEY_CT_ZONE,
			    &mask->ct_zone, TCA_FLOWER_KEY_CT_ZONE_MASK,
			    sizeof(key->ct_zone)))
		goto nla_put_failure;

	if (FUNC0(CONFIG_NF_CONNTRACK_MARK) &&
	    FUNC1(skb, &key->ct_mark, TCA_FLOWER_KEY_CT_MARK,
			    &mask->ct_mark, TCA_FLOWER_KEY_CT_MARK_MASK,
			    sizeof(key->ct_mark)))
		goto nla_put_failure;

	if (FUNC0(CONFIG_NF_CONNTRACK_LABELS) &&
	    FUNC1(skb, &key->ct_labels, TCA_FLOWER_KEY_CT_LABELS,
			    &mask->ct_labels, TCA_FLOWER_KEY_CT_LABELS_MASK,
			    sizeof(key->ct_labels)))
		goto nla_put_failure;

	return 0;

nla_put_failure:
	return -EMSGSIZE;
}