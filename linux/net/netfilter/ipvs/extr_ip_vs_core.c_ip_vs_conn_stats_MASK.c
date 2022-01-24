#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  cpustats; } ;
struct netns_ipvs {TYPE_4__ tot_stats; } ;
struct TYPE_8__ {int /*<<< orphan*/  cpustats; } ;
struct ip_vs_service {TYPE_3__ stats; struct netns_ipvs* ipvs; } ;
struct TYPE_10__ {int /*<<< orphan*/  conns; } ;
struct ip_vs_cpu_stats {int /*<<< orphan*/  syncp; TYPE_5__ cnt; } ;
struct ip_vs_conn {TYPE_2__* dest; } ;
struct TYPE_6__ {int /*<<< orphan*/  cpustats; } ;
struct TYPE_7__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct ip_vs_cpu_stats* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC5(struct ip_vs_conn *cp, struct ip_vs_service *svc)
{
	struct netns_ipvs *ipvs = svc->ipvs;
	struct ip_vs_cpu_stats *s;

	FUNC0();

	s = FUNC2(cp->dest->stats.cpustats);
	FUNC3(&s->syncp);
	s->cnt.conns++;
	FUNC4(&s->syncp);

	s = FUNC2(svc->stats.cpustats);
	FUNC3(&s->syncp);
	s->cnt.conns++;
	FUNC4(&s->syncp);

	s = FUNC2(ipvs->tot_stats.cpustats);
	FUNC3(&s->syncp);
	s->cnt.conns++;
	FUNC4(&s->syncp);

	FUNC1();
}