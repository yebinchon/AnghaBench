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
struct nf_conntrack_helper {scalar_t__ help; } ;
struct nf_conn_help {struct nf_conntrack_helper* helper; } ;
struct nf_conn {int /*<<< orphan*/  status; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IPS_HELPER_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct nf_conntrack_helper*,int /*<<< orphan*/ *) ; 
 struct nf_conn_help* FUNC1 (struct nf_conn*,int /*<<< orphan*/ ) ; 
 struct nf_conntrack_helper* FUNC2 (struct nf_conn*,struct net*) ; 
 struct net* FUNC3 (struct nf_conn*) ; 
 struct nf_conn_help* FUNC4 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC5 (struct nf_conntrack_helper*,struct nf_conntrack_helper*) ; 
 struct nf_conntrack_helper* FUNC6 (struct nf_conntrack_helper*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC9(struct nf_conn *ct, struct nf_conn *tmpl,
			      gfp_t flags)
{
	struct nf_conntrack_helper *helper = NULL;
	struct nf_conn_help *help;
	struct net *net = FUNC3(ct);

	/* We already got a helper explicitly attached. The function
	 * nf_conntrack_alter_reply - in case NAT is in use - asks for looking
	 * the helper up again. Since now the user is in full control of
	 * making consistent helper configurations, skip this automatic
	 * re-lookup, otherwise we'll lose the helper.
	 */
	if (FUNC8(IPS_HELPER_BIT, &ct->status))
		return 0;

	if (tmpl != NULL) {
		help = FUNC4(tmpl);
		if (help != NULL) {
			helper = help->helper;
			FUNC7(IPS_HELPER_BIT, &ct->status);
		}
	}

	help = FUNC4(ct);

	if (helper == NULL) {
		helper = FUNC2(ct, net);
		if (helper == NULL) {
			if (help)
				FUNC0(help->helper, NULL);
			return 0;
		}
	}

	if (help == NULL) {
		help = FUNC1(ct, flags);
		if (help == NULL)
			return -ENOMEM;
	} else {
		/* We only allow helper re-assignment of the same sort since
		 * we cannot reallocate the helper extension area.
		 */
		struct nf_conntrack_helper *tmp = FUNC6(help->helper);

		if (tmp && tmp->help != helper->help) {
			FUNC0(help->helper, NULL);
			return 0;
		}
	}

	FUNC5(help->helper, helper);

	return 0;
}