#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  peer_addr; } ;
struct ceph_mon_client {TYPE_1__ con; int /*<<< orphan*/  cur_mon; int /*<<< orphan*/  hunting; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ceph_mon_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_mon_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ceph_mon_client *monc)
{
	if (!monc->hunting)
		FUNC3("mon%d %s session lost, hunting for new mon\n",
		    monc->cur_mon, FUNC2(&monc->con.peer_addr));

	FUNC0(monc);
	FUNC1(monc);
}