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
struct nsm_handle {int dummy; } ;
struct nlm_reboot {int dummy; } ;
struct nlm_host {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct nlm_host* FUNC0 (int /*<<< orphan*/ ,struct nsm_handle*,struct nlm_reboot const*) ; 
 int /*<<< orphan*/  nlm_client_hosts ; 
 int /*<<< orphan*/  nlm_server_hosts ; 
 int /*<<< orphan*/  FUNC1 (struct nlm_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct nlm_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct nlm_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct nlm_host*) ; 
 struct nsm_handle* FUNC5 (struct net const*,struct nlm_reboot const*) ; 
 int /*<<< orphan*/  FUNC6 (struct nsm_handle*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(const struct net *net, const struct nlm_reboot *info)
{
	struct nsm_handle *nsm;
	struct nlm_host	*host;

	nsm = FUNC5(net, info);
	if (FUNC7(nsm == NULL))
		return;

	/* Mark all hosts tied to this NSM state as having rebooted.
	 * We run the loop repeatedly, because we drop the host table
	 * lock for this.
	 * To avoid processing a host several times, we match the nsmstate.
	 */
	while ((host = FUNC0(nlm_server_hosts, nsm, info)) != NULL) {
		FUNC3(host);
		FUNC4(host);
	}
	while ((host = FUNC0(nlm_client_hosts, nsm, info)) != NULL) {
		FUNC1(host);
		FUNC2(host);
	}

	FUNC6(nsm);
}