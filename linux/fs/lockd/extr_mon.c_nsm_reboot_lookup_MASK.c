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
struct nsm_handle {int /*<<< orphan*/  sm_count; int /*<<< orphan*/  sm_addrbuf; int /*<<< orphan*/  sm_name; } ;
struct nlm_reboot {int /*<<< orphan*/  mon; int /*<<< orphan*/  len; int /*<<< orphan*/  priv; } ;
struct net {int dummy; } ;
struct lockd_net {int /*<<< orphan*/  nsm_handles; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  lockd_net_id ; 
 struct lockd_net* FUNC1 (struct net const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nsm_lock ; 
 struct nsm_handle* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

struct nsm_handle *FUNC8(const struct net *net,
				const struct nlm_reboot *info)
{
	struct nsm_handle *cached;
	struct lockd_net *ln = FUNC1(net, lockd_net_id);

	FUNC5(&nsm_lock);

	cached = FUNC2(&ln->nsm_handles, &info->priv);
	if (FUNC7(cached == NULL)) {
		FUNC6(&nsm_lock);
		FUNC0("lockd: never saw rebooted peer '%.*s' before\n",
				info->len, info->mon);
		return cached;
	}

	FUNC3(&cached->sm_count);
	FUNC6(&nsm_lock);

	FUNC0("lockd: host %s (%s) rebooted, cnt %d\n",
			cached->sm_name, cached->sm_addrbuf,
			FUNC4(&cached->sm_count));
	return cached;
}