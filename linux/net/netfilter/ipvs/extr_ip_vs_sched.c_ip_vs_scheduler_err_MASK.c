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
struct TYPE_2__ {int /*<<< orphan*/  ip; int /*<<< orphan*/  in6; } ;
struct ip_vs_service {scalar_t__ af; int /*<<< orphan*/  port; TYPE_1__ addr; int /*<<< orphan*/  protocol; int /*<<< orphan*/  fwmark; int /*<<< orphan*/  scheduler; } ;
struct ip_vs_scheduler {char* name; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ip_vs_scheduler* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct ip_vs_service *svc, const char *msg)
{
	struct ip_vs_scheduler *sched = FUNC3(svc->scheduler);
	char *sched_name = sched ? sched->name : "none";

	if (svc->fwmark) {
		FUNC0("%s: FWM %u 0x%08X - %s\n",
			     sched_name, svc->fwmark, &svc->fwmark, msg);
#ifdef CONFIG_IP_VS_IPV6
	} else if (svc->af == AF_INET6) {
		IP_VS_ERR_RL("%s: %s [%pI6c]:%d - %s\n",
			     sched_name, ip_vs_proto_name(svc->protocol),
			     &svc->addr.in6, ntohs(svc->port), msg);
#endif
	} else {
		FUNC0("%s: %s %pI4:%d - %s\n",
			     sched_name, FUNC1(svc->protocol),
			     &svc->addr.ip, FUNC2(svc->port), msg);
	}
}