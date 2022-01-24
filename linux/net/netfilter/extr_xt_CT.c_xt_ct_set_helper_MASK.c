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
typedef  int /*<<< orphan*/  u8 ;
struct xt_tgchk_param {int /*<<< orphan*/  family; } ;
struct nf_conntrack_helper {int dummy; } ;
struct nf_conn_help {struct nf_conntrack_helper* helper; } ;
struct nf_conn {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct nf_conntrack_helper*) ; 
 struct nf_conntrack_helper* FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nf_conn_help* FUNC2 (struct nf_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct xt_tgchk_param const*) ; 

__attribute__((used)) static int
FUNC5(struct nf_conn *ct, const char *helper_name,
		 const struct xt_tgchk_param *par)
{
	struct nf_conntrack_helper *helper;
	struct nf_conn_help *help;
	u8 proto;

	proto = FUNC4(par);
	if (!proto) {
		FUNC3("You must specify a L4 protocol and not use inversions on it\n");
		return -ENOENT;
	}

	helper = FUNC1(helper_name, par->family,
						    proto);
	if (helper == NULL) {
		FUNC3("No such helper \"%s\"\n", helper_name);
		return -ENOENT;
	}

	help = FUNC2(ct, GFP_KERNEL);
	if (help == NULL) {
		FUNC0(helper);
		return -ENOMEM;
	}

	help->helper = helper;
	return 0;
}