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
typedef  union nf_inet_addr {int dummy; } nf_inet_addr ;
struct sk_buff {int dummy; } ;
struct ip_vs_sh_state {int dummy; } ;
struct ip_vs_service {int flags; int /*<<< orphan*/  af; scalar_t__ sched_data; } ;
struct ip_vs_iphdr {union nf_inet_addr saddr; union nf_inet_addr daddr; } ;
struct ip_vs_dest {int /*<<< orphan*/  port; union nf_inet_addr const addr; int /*<<< orphan*/  af; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,union nf_inet_addr const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IP_VS_SVC_F_SCHED_SH_FALLBACK ; 
 int IP_VS_SVC_F_SCHED_SH_PORT ; 
 scalar_t__ FUNC3 (struct ip_vs_iphdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_vs_service*,char*) ; 
 struct ip_vs_dest* FUNC5 (struct ip_vs_service*,struct ip_vs_sh_state*,union nf_inet_addr const*,int /*<<< orphan*/ ) ; 
 struct ip_vs_dest* FUNC6 (struct ip_vs_service*,struct ip_vs_sh_state*,union nf_inet_addr const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff const*,struct ip_vs_iphdr*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ip_vs_dest *
FUNC9(struct ip_vs_service *svc, const struct sk_buff *skb,
		  struct ip_vs_iphdr *iph)
{
	struct ip_vs_dest *dest;
	struct ip_vs_sh_state *s;
	__be16 port = 0;
	const union nf_inet_addr *hash_addr;

	hash_addr = FUNC3(iph) ? &iph->daddr : &iph->saddr;

	FUNC0(6, "ip_vs_sh_schedule(): Scheduling...\n");

	if (svc->flags & IP_VS_SVC_F_SCHED_SH_PORT)
		port = FUNC7(skb, iph);

	s = (struct ip_vs_sh_state *) svc->sched_data;

	if (svc->flags & IP_VS_SVC_F_SCHED_SH_FALLBACK)
		dest = FUNC6(svc, s, hash_addr, port);
	else
		dest = FUNC5(svc, s, hash_addr, port);

	if (!dest) {
		FUNC4(svc, "no destination available");
		return NULL;
	}

	FUNC2(6, "SH: source IP address %s --> server %s:%d\n",
		      FUNC1(svc->af, hash_addr),
		      FUNC1(dest->af, &dest->addr),
		      FUNC8(dest->port));

	return dest;
}