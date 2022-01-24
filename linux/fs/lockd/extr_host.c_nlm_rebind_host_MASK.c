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
struct nlm_host {scalar_t__ h_nextrebind; scalar_t__ h_rpcclnt; int /*<<< orphan*/  h_name; } ;

/* Variables and functions */
 scalar_t__ NLM_HOST_REBIND ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 

void
FUNC3(struct nlm_host *host)
{
	FUNC0("lockd: rebind host %s\n", host->h_name);
	if (host->h_rpcclnt && FUNC2(jiffies, host->h_nextrebind)) {
		FUNC1(host->h_rpcclnt);
		host->h_nextrebind = jiffies + NLM_HOST_REBIND;
	}
}