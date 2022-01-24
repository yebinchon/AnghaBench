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
struct p9_client {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  BeginDisconnect ; 
 int /*<<< orphan*/  P9_DEBUG_9P ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct p9_client*) ; 

void FUNC1(struct p9_client *clnt)
{
	FUNC0(P9_DEBUG_9P, "clnt %p\n", clnt);
	clnt->status = BeginDisconnect;
}