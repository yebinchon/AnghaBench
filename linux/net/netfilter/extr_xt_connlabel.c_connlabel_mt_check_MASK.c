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
struct xt_mtchk_param {int const family; int /*<<< orphan*/  net; struct xt_connlabel_mtinfo* matchinfo; } ;
struct xt_connlabel_mtinfo {int const options; int /*<<< orphan*/  bit; } ;

/* Variables and functions */
 int EINVAL ; 
 int XT_CONNLABEL_OP_INVERT ; 
 int XT_CONNLABEL_OP_SET ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC3 (char*,int const) ; 

__attribute__((used)) static int FUNC4(const struct xt_mtchk_param *par)
{
	const int options = XT_CONNLABEL_OP_INVERT |
			    XT_CONNLABEL_OP_SET;
	struct xt_connlabel_mtinfo *info = par->matchinfo;
	int ret;

	if (info->options & ~options) {
		FUNC3("Unknown options in mask %x\n",
				    info->options);
		return -EINVAL;
	}

	ret = FUNC1(par->net, par->family);
	if (ret < 0) {
		FUNC3("cannot load conntrack support for proto=%u\n",
				    par->family);
		return ret;
	}

	ret = FUNC0(par->net, info->bit);
	if (ret < 0)
		FUNC2(par->net, par->family);
	return ret;
}