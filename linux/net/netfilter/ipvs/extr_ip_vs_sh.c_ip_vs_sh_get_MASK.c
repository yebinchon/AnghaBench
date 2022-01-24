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
typedef  union nf_inet_addr {int dummy; } nf_inet_addr ;
struct ip_vs_sh_state {TYPE_1__* buckets; } ;
struct ip_vs_service {int /*<<< orphan*/  af; } ;
struct ip_vs_dest {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int /*<<< orphan*/  dest; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,union nf_inet_addr const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ip_vs_dest*) ; 
 struct ip_vs_dest* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct ip_vs_dest *
FUNC3(struct ip_vs_service *svc, struct ip_vs_sh_state *s,
	     const union nf_inet_addr *addr, __be16 port)
{
	unsigned int hash = FUNC0(svc->af, addr, port, 0);
	struct ip_vs_dest *dest = FUNC2(s->buckets[hash].dest);

	return (!dest || FUNC1(dest)) ? NULL : dest;
}