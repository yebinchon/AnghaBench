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
struct nlm_host {int /*<<< orphan*/  h_count; int /*<<< orphan*/  h_server; int /*<<< orphan*/  h_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct nlm_host *host)
{
	if (host == NULL)
		return;

	FUNC1("lockd: release server host %s\n", host->h_name);

	FUNC0(!host->h_server);
	FUNC2(&host->h_count);
}