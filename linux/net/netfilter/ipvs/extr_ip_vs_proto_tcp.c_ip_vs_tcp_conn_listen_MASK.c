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
struct ip_vs_proto_data {int /*<<< orphan*/ * timeout_table; } ;
struct ip_vs_conn {size_t state; int /*<<< orphan*/  lock; int /*<<< orphan*/  timeout; int /*<<< orphan*/  ipvs; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_TCP ; 
 size_t IP_VS_TCP_S_LISTEN ; 
 struct ip_vs_proto_data* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * tcp_timeouts ; 

void FUNC3(struct ip_vs_conn *cp)
{
	struct ip_vs_proto_data *pd = FUNC0(cp->ipvs, IPPROTO_TCP);

	FUNC1(&cp->lock);
	cp->state = IP_VS_TCP_S_LISTEN;
	cp->timeout = (pd ? pd->timeout_table[IP_VS_TCP_S_LISTEN]
			   : tcp_timeouts[IP_VS_TCP_S_LISTEN]);
	FUNC2(&cp->lock);
}