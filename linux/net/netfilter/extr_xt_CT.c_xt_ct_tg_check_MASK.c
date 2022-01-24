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
typedef  int /*<<< orphan*/  zone ;
struct xt_tgchk_param {int /*<<< orphan*/  family; int /*<<< orphan*/  net; } ;
struct xt_ct_target_info_v1 {int flags; struct nf_conn* ct; scalar_t__* timeout; scalar_t__* helper; int /*<<< orphan*/  exp_events; int /*<<< orphan*/  ct_events; scalar_t__ zone; } ;
struct nf_conntrack_zone {int /*<<< orphan*/  flags; int /*<<< orphan*/  dir; scalar_t__ id; } ;
struct nf_conn_help {int /*<<< orphan*/  helper; } ;
struct nf_conn {int /*<<< orphan*/  ct_general; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENAMETOOLONG ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IPS_CONFIRMED_BIT ; 
 int /*<<< orphan*/  NF_CT_FLAG_MARK ; 
 int XT_CT_NOTRACK ; 
 int XT_CT_ZONE_DIR_ORIG ; 
 int XT_CT_ZONE_DIR_REPL ; 
 int XT_CT_ZONE_MARK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nf_conntrack_zone*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nf_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nf_conn* FUNC7 (int /*<<< orphan*/ ,struct nf_conntrack_zone*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nf_conn*) ; 
 struct nf_conn_help* FUNC9 (struct nf_conn*) ; 
 int FUNC10 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct xt_ct_target_info_v1*) ; 
 int FUNC12 (struct nf_conn*,scalar_t__*,struct xt_tgchk_param const*) ; 
 int FUNC13 (struct nf_conn*,struct xt_tgchk_param const*,scalar_t__*) ; 

__attribute__((used)) static int FUNC14(const struct xt_tgchk_param *par,
			  struct xt_ct_target_info_v1 *info)
{
	struct nf_conntrack_zone zone;
	struct nf_conn_help *help;
	struct nf_conn *ct;
	int ret = -EOPNOTSUPP;

	if (info->flags & XT_CT_NOTRACK) {
		ct = NULL;
		goto out;
	}

#ifndef CONFIG_NF_CONNTRACK_ZONES
	if (info->zone || info->flags & (XT_CT_ZONE_DIR_ORIG |
					 XT_CT_ZONE_DIR_REPL |
					 XT_CT_ZONE_MARK))
		goto err1;
#endif

	ret = FUNC5(par->net, par->family);
	if (ret < 0)
		goto err1;

	FUNC1(&zone, 0, sizeof(zone));
	zone.id = info->zone;
	zone.dir = FUNC11(info);
	if (info->flags & XT_CT_ZONE_MARK)
		zone.flags |= NF_CT_FLAG_MARK;

	ct = FUNC7(par->net, &zone, GFP_KERNEL);
	if (!ct) {
		ret = -ENOMEM;
		goto err2;
	}

	ret = 0;
	if ((info->ct_events || info->exp_events) &&
	    !FUNC4(ct, info->ct_events, info->exp_events,
				  GFP_KERNEL)) {
		ret = -EINVAL;
		goto err3;
	}

	if (info->helper[0]) {
		if (FUNC10(info->helper, sizeof(info->helper)) == sizeof(info->helper)) {
			ret = -ENAMETOOLONG;
			goto err3;
		}

		ret = FUNC12(ct, info->helper, par);
		if (ret < 0)
			goto err3;
	}

	if (info->timeout[0]) {
		if (FUNC10(info->timeout, sizeof(info->timeout)) == sizeof(info->timeout)) {
			ret = -ENAMETOOLONG;
			goto err4;
		}

		ret = FUNC13(ct, par, info->timeout);
		if (ret < 0)
			goto err4;
	}
	FUNC0(IPS_CONFIRMED_BIT, &ct->status);
	FUNC2(&ct->ct_general);
out:
	info->ct = ct;
	return 0;

err4:
	help = FUNC9(ct);
	if (help)
		FUNC3(help->helper);
err3:
	FUNC8(ct);
err2:
	FUNC6(par->net, par->family);
err1:
	return ret;
}