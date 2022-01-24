#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ len; } ;
struct TYPE_7__ {int /*<<< orphan*/  cpustats; } ;
struct netns_ipvs {TYPE_3__ tot_stats; } ;
struct TYPE_6__ {int /*<<< orphan*/  cpustats; } ;
struct ip_vs_service {TYPE_2__ stats; } ;
struct TYPE_5__ {int /*<<< orphan*/  cpustats; } ;
struct ip_vs_dest {int flags; int /*<<< orphan*/  svc; TYPE_1__ stats; } ;
struct TYPE_8__ {int /*<<< orphan*/  inbytes; int /*<<< orphan*/  inpkts; } ;
struct ip_vs_cpu_stats {int /*<<< orphan*/  syncp; TYPE_4__ cnt; } ;
struct ip_vs_conn {struct netns_ipvs* ipvs; struct ip_vs_dest* dest; } ;

/* Variables and functions */
 int IP_VS_DEST_F_AVAILABLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct ip_vs_service* FUNC2 (int /*<<< orphan*/ ) ; 
 struct ip_vs_cpu_stats* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC6(struct ip_vs_conn *cp, struct sk_buff *skb)
{
	struct ip_vs_dest *dest = cp->dest;
	struct netns_ipvs *ipvs = cp->ipvs;

	if (dest && (dest->flags & IP_VS_DEST_F_AVAILABLE)) {
		struct ip_vs_cpu_stats *s;
		struct ip_vs_service *svc;

		FUNC0();

		s = FUNC3(dest->stats.cpustats);
		FUNC4(&s->syncp);
		s->cnt.inpkts++;
		s->cnt.inbytes += skb->len;
		FUNC5(&s->syncp);

		svc = FUNC2(dest->svc);
		s = FUNC3(svc->stats.cpustats);
		FUNC4(&s->syncp);
		s->cnt.inpkts++;
		s->cnt.inbytes += skb->len;
		FUNC5(&s->syncp);

		s = FUNC3(ipvs->tot_stats.cpustats);
		FUNC4(&s->syncp);
		s->cnt.inpkts++;
		s->cnt.inbytes += skb->len;
		FUNC5(&s->syncp);

		FUNC1();
	}
}