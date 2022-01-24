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
struct xt_tgdtor_param {int /*<<< orphan*/  family; int /*<<< orphan*/  net; } ;
struct xt_ct_target_info_v1 {struct nf_conn* ct; } ;
struct nf_conn_help {int /*<<< orphan*/  helper; } ;
struct nf_conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nf_conn*) ; 
 struct nf_conn_help* FUNC4 (struct nf_conn*) ; 

__attribute__((used)) static void FUNC5(const struct xt_tgdtor_param *par,
			     struct xt_ct_target_info_v1 *info)
{
	struct nf_conn *ct = info->ct;
	struct nf_conn_help *help;

	if (ct) {
		help = FUNC4(ct);
		if (help)
			FUNC0(help->helper);

		FUNC2(par->net, par->family);

		FUNC1(ct);
		FUNC3(info->ct);
	}
}