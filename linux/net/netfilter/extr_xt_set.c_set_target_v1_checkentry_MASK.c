#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xt_tgchk_param {int /*<<< orphan*/  net; struct xt_set_info_target_v1* targinfo; } ;
struct TYPE_4__ {scalar_t__ index; scalar_t__ dim; } ;
struct TYPE_3__ {scalar_t__ index; scalar_t__ dim; } ;
struct xt_set_info_target_v1 {TYPE_2__ del_set; TYPE_1__ add_set; } ;
typedef  scalar_t__ ip_set_id_t ;

/* Variables and functions */
 int ENOENT ; 
 int ERANGE ; 
 scalar_t__ IPSET_DIM_MAX ; 
 scalar_t__ IPSET_INVALID_ID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int
FUNC3(const struct xt_tgchk_param *par)
{
	const struct xt_set_info_target_v1 *info = par->targinfo;
	ip_set_id_t index;

	if (info->add_set.index != IPSET_INVALID_ID) {
		index = FUNC0(par->net, info->add_set.index);
		if (index == IPSET_INVALID_ID) {
			FUNC2("Cannot find add_set index %u as target\n",
					    info->add_set.index);
			return -ENOENT;
		}
	}

	if (info->del_set.index != IPSET_INVALID_ID) {
		index = FUNC0(par->net, info->del_set.index);
		if (index == IPSET_INVALID_ID) {
			FUNC2("Cannot find del_set index %u as target\n",
					    info->del_set.index);
			if (info->add_set.index != IPSET_INVALID_ID)
				FUNC1(par->net, info->add_set.index);
			return -ENOENT;
		}
	}
	if (info->add_set.dim > IPSET_DIM_MAX ||
	    info->del_set.dim > IPSET_DIM_MAX) {
		FUNC2("SET target dimension over the limit!\n");
		if (info->add_set.index != IPSET_INVALID_ID)
			FUNC1(par->net, info->add_set.index);
		if (info->del_set.index != IPSET_INVALID_ID)
			FUNC1(par->net, info->del_set.index);
		return -ERANGE;
	}

	return 0;
}