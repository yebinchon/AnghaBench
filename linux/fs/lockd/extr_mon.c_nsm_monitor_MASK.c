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
struct nsm_res {scalar_t__ status; scalar_t__ state; } ;
struct nsm_handle {scalar_t__ sm_name; int sm_monitored; scalar_t__ sm_mon_name; scalar_t__ sm_addrbuf; } ;
struct nlm_host {struct nsm_handle* h_nsmhandle; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  NSMPROC_MON ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ nsm_local_state ; 
 int FUNC1 (struct nsm_handle*,int /*<<< orphan*/ ,struct nsm_res*,struct nlm_host const*) ; 
 scalar_t__ nsm_use_hostnames ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(const struct nlm_host *host)
{
	struct nsm_handle *nsm = host->h_nsmhandle;
	struct nsm_res	res;
	int		status;

	FUNC0("lockd: nsm_monitor(%s)\n", nsm->sm_name);

	if (nsm->sm_monitored)
		return 0;

	/*
	 * Choose whether to record the caller_name or IP address of
	 * this peer in the local rpc.statd's database.
	 */
	nsm->sm_mon_name = nsm_use_hostnames ? nsm->sm_name : nsm->sm_addrbuf;

	status = FUNC1(nsm, NSMPROC_MON, &res, host);
	if (FUNC3(res.status != 0))
		status = -EIO;
	if (FUNC3(status < 0)) {
		FUNC2("lockd: cannot monitor %s\n", nsm->sm_name);
		return status;
	}

	nsm->sm_monitored = 1;
	if (FUNC3(nsm_local_state != res.state)) {
		nsm_local_state = res.state;
		FUNC0("lockd: NSM state changed to %d\n", nsm_local_state);
	}
	return 0;
}