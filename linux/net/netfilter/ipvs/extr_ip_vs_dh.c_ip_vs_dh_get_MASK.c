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
struct ip_vs_dh_state {TYPE_1__* buckets; } ;
struct ip_vs_dest {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dest; } ;

/* Variables and functions */
 size_t FUNC0 (int,union nf_inet_addr const*) ; 
 struct ip_vs_dest* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct ip_vs_dest *
FUNC2(int af, struct ip_vs_dh_state *s, const union nf_inet_addr *addr)
{
	return FUNC1(s->buckets[FUNC0(af, addr)].dest);
}