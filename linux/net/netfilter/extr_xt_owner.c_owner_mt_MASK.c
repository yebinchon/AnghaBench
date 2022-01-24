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
struct xt_owner_match_info {int match; int invert; int /*<<< orphan*/  gid_max; int /*<<< orphan*/  gid_min; int /*<<< orphan*/  uid_max; int /*<<< orphan*/  uid_min; } ;
struct xt_action_param {struct xt_owner_match_info* matchinfo; } ;
struct sock {TYPE_1__* sk_socket; } ;
struct sk_buff {int dummy; } ;
struct net {int /*<<< orphan*/  user_ns; } ;
struct group_info {unsigned int ngroups; int /*<<< orphan*/ * gid; } ;
struct file {TYPE_2__* f_cred; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;
struct TYPE_4__ {int /*<<< orphan*/  fsgid; struct group_info* group_info; int /*<<< orphan*/  fsuid; } ;
struct TYPE_3__ {struct file* file; } ;

/* Variables and functions */
 int XT_OWNER_GID ; 
 int XT_OWNER_SOCKET ; 
 int XT_OWNER_SUPPL_GROUPS ; 
 int XT_OWNER_UID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net*,int /*<<< orphan*/ ) ; 
 struct sock* FUNC5 (struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net* FUNC9 (struct xt_action_param*) ; 

__attribute__((used)) static bool
FUNC10(const struct sk_buff *skb, struct xt_action_param *par)
{
	const struct xt_owner_match_info *info = par->matchinfo;
	const struct file *filp;
	struct sock *sk = FUNC5(skb);
	struct net *net = FUNC9(par);

	if (!sk || !sk->sk_socket || !FUNC4(net, FUNC6(sk)))
		return (info->match ^ info->invert) == 0;
	else if (info->match & info->invert & XT_OWNER_SOCKET)
		/*
		 * Socket exists but user wanted ! --socket-exists.
		 * (Single ampersands intended.)
		 */
		return false;

	filp = sk->sk_socket->file;
	if (filp == NULL)
		return ((info->match ^ info->invert) &
		       (XT_OWNER_UID | XT_OWNER_GID)) == 0;

	if (info->match & XT_OWNER_UID) {
		kuid_t uid_min = FUNC3(net->user_ns, info->uid_min);
		kuid_t uid_max = FUNC3(net->user_ns, info->uid_max);
		if ((FUNC7(filp->f_cred->fsuid, uid_min) &&
		     FUNC8(filp->f_cred->fsuid, uid_max)) ^
		    !(info->invert & XT_OWNER_UID))
			return false;
	}

	if (info->match & XT_OWNER_GID) {
		unsigned int i, match = false;
		kgid_t gid_min = FUNC2(net->user_ns, info->gid_min);
		kgid_t gid_max = FUNC2(net->user_ns, info->gid_max);
		struct group_info *gi = filp->f_cred->group_info;

		if (FUNC0(filp->f_cred->fsgid, gid_min) &&
		    FUNC1(filp->f_cred->fsgid, gid_max))
			match = true;

		if (!match && (info->match & XT_OWNER_SUPPL_GROUPS) && gi) {
			for (i = 0; i < gi->ngroups; ++i) {
				kgid_t group = gi->gid[i];

				if (FUNC0(group, gid_min) &&
				    FUNC1(group, gid_max)) {
					match = true;
					break;
				}
			}
		}

		if (match ^ !(info->invert & XT_OWNER_GID))
			return false;
	}

	return true;
}