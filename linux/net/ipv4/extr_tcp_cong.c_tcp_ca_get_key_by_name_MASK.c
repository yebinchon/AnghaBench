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
struct tcp_congestion_ops {int flags; int /*<<< orphan*/  key; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCP_CA_UNSPEC ; 
 int TCP_CONG_NEEDS_ECN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct tcp_congestion_ops* FUNC3 (struct net*,char const*) ; 

u32 FUNC4(struct net *net, const char *name, bool *ecn_ca)
{
	const struct tcp_congestion_ops *ca;
	u32 key = TCP_CA_UNSPEC;

	FUNC0();

	FUNC1();
	ca = FUNC3(net, name);
	if (ca) {
		key = ca->key;
		*ecn_ca = ca->flags & TCP_CONG_NEEDS_ECN;
	}
	FUNC2();

	return key;
}