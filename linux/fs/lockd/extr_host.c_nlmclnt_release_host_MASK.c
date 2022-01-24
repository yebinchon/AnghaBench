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
struct nlm_host {int h_server; int /*<<< orphan*/  h_reclaim; int /*<<< orphan*/  h_granted; int /*<<< orphan*/  h_lockowners; int /*<<< orphan*/  h_count; int /*<<< orphan*/  h_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nlm_host*) ; 
 int /*<<< orphan*/  nlm_host_mutex ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC6(struct nlm_host *host)
{
	if (host == NULL)
		return;

	FUNC1("lockd: release client host %s\n", host->h_name);

	FUNC0(host->h_server);

	if (FUNC5(&host->h_count, &nlm_host_mutex)) {
		FUNC0(!FUNC2(&host->h_lockowners));
		FUNC0(!FUNC2(&host->h_granted));
		FUNC0(!FUNC2(&host->h_reclaim));

		FUNC4(host);
		FUNC3(&nlm_host_mutex);
	}
}