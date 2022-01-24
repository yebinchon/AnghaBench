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
typedef  int /*<<< orphan*/  tss ;
struct scm_timestamping_internal {int /*<<< orphan*/ * ts; } ;
struct scm_timestamping {int /*<<< orphan*/ * ts; } ;
struct msghdr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_TIMESTAMPING_OLD ; 
 int /*<<< orphan*/  FUNC1 (struct msghdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct scm_timestamping*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct msghdr *msg, struct scm_timestamping_internal *tss_internal)
{
	struct scm_timestamping tss;
	int i;

	for (i = 0; i < FUNC0(tss.ts); i++)
		tss.ts[i] = FUNC2(tss_internal->ts[i]);

	FUNC1(msg, SOL_SOCKET, SO_TIMESTAMPING_OLD, sizeof(tss), &tss);
}