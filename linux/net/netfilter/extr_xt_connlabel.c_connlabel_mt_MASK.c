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
struct xt_connlabel_mtinfo {int options; int /*<<< orphan*/  bit; } ;
struct xt_action_param {struct xt_connlabel_mtinfo* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct nf_conn_labels {int /*<<< orphan*/  bits; } ;
struct nf_conn {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 int /*<<< orphan*/  IPCT_LABEL ; 
 int XT_CONNLABEL_OP_INVERT ; 
 int XT_CONNLABEL_OP_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct nf_conn*) ; 
 struct nf_conn* FUNC1 (struct sk_buff const*,int*) ; 
 struct nf_conn_labels* FUNC2 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC5(const struct sk_buff *skb, struct xt_action_param *par)
{
	const struct xt_connlabel_mtinfo *info = par->matchinfo;
	enum ip_conntrack_info ctinfo;
	struct nf_conn_labels *labels;
	struct nf_conn *ct;
	bool invert = info->options & XT_CONNLABEL_OP_INVERT;

	ct = FUNC1(skb, &ctinfo);
	if (ct == NULL)
		return invert;

	labels = FUNC2(ct);
	if (!labels)
		return invert;

	if (FUNC4(info->bit, labels->bits))
		return !invert;

	if (info->options & XT_CONNLABEL_OP_SET) {
		if (!FUNC3(info->bit, labels->bits))
			FUNC0(IPCT_LABEL, ct);

		return !invert;
	}

	return invert;
}