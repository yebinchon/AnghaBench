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
struct ip_vs_service_entry {int timeout; int /*<<< orphan*/  stats; int /*<<< orphan*/  num_dests; int /*<<< orphan*/  netmask; int /*<<< orphan*/  flags; int /*<<< orphan*/  sched_name; int /*<<< orphan*/  fwmark; int /*<<< orphan*/  port; int /*<<< orphan*/  addr; int /*<<< orphan*/  protocol; } ;
struct TYPE_2__ {int /*<<< orphan*/  ip; } ;
struct ip_vs_service {int timeout; int /*<<< orphan*/  stats; int /*<<< orphan*/  num_dests; int /*<<< orphan*/  netmask; int /*<<< orphan*/  flags; int /*<<< orphan*/  fwmark; int /*<<< orphan*/  port; TYPE_1__ addr; int /*<<< orphan*/  protocol; int /*<<< orphan*/  scheduler; } ;
struct ip_vs_scheduler {char* name; } ;
struct ip_vs_kstats {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct ip_vs_kstats*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ip_vs_kstats*) ; 
 struct ip_vs_scheduler* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC4(struct ip_vs_service_entry *dst, struct ip_vs_service *src)
{
	struct ip_vs_scheduler *sched;
	struct ip_vs_kstats kstats;
	char *sched_name;

	sched = FUNC2(src->scheduler, 1);
	sched_name = sched ? sched->name : "none";
	dst->protocol = src->protocol;
	dst->addr = src->addr.ip;
	dst->port = src->port;
	dst->fwmark = src->fwmark;
	FUNC3(dst->sched_name, sched_name, sizeof(dst->sched_name));
	dst->flags = src->flags;
	dst->timeout = src->timeout / HZ;
	dst->netmask = src->netmask;
	dst->num_dests = src->num_dests;
	FUNC0(&kstats, &src->stats);
	FUNC1(&dst->stats, &kstats);
}