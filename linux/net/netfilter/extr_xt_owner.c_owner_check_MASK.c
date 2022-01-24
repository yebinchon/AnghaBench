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
struct xt_owner_match_info {int match; scalar_t__ uid_min; scalar_t__ uid_max; scalar_t__ gid_min; scalar_t__ gid_max; } ;
struct xt_mtchk_param {struct net* net; struct xt_owner_match_info* matchinfo; } ;
struct net {scalar_t__ user_ns; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
 int EINVAL ; 
 int XT_OWNER_GID ; 
 int XT_OWNER_MASK ; 
 int XT_OWNER_UID ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(const struct xt_mtchk_param *par)
{
	struct xt_owner_match_info *info = par->matchinfo;
	struct net *net = par->net;

	if (info->match & ~XT_OWNER_MASK)
		return -EINVAL;

	/* Only allow the common case where the userns of the writer
	 * matches the userns of the network namespace.
	 */
	if ((info->match & (XT_OWNER_UID|XT_OWNER_GID)) &&
	    (FUNC0() != net->user_ns))
		return -EINVAL;

	/* Ensure the uids are valid */
	if (info->match & XT_OWNER_UID) {
		kuid_t uid_min = FUNC4(net->user_ns, info->uid_min);
		kuid_t uid_max = FUNC4(net->user_ns, info->uid_max);

		if (!FUNC6(uid_min) || !FUNC6(uid_max) ||
		    (info->uid_max < info->uid_min) ||
		    FUNC5(uid_max, uid_min)) {
			return -EINVAL;
		}
	}

	/* Ensure the gids are valid */
	if (info->match & XT_OWNER_GID) {
		kgid_t gid_min = FUNC3(net->user_ns, info->gid_min);
		kgid_t gid_max = FUNC3(net->user_ns, info->gid_max);

		if (!FUNC2(gid_min) || !FUNC2(gid_max) ||
		    (info->gid_max < info->gid_min) ||
		    FUNC1(gid_max, gid_min)) {
			return -EINVAL;
		}
	}

	return 0;
}