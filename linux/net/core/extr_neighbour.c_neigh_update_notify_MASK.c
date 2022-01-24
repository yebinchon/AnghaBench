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
typedef  int /*<<< orphan*/  u32 ;
struct neighbour {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETEVENT_NEIGH_UPDATE ; 
 int /*<<< orphan*/  RTM_NEWNEIGH ; 
 int /*<<< orphan*/  FUNC0 (struct neighbour*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct neighbour*) ; 

__attribute__((used)) static void FUNC2(struct neighbour *neigh, u32 nlmsg_pid)
{
	FUNC1(NETEVENT_NEIGH_UPDATE, neigh);
	FUNC0(neigh, RTM_NEWNEIGH, 0, nlmsg_pid);
}