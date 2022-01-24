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
struct sk_buff {int dummy; } ;
struct ip_vs_proto_data {int /*<<< orphan*/ * timeout_table; } ;
struct ip_vs_conn {int /*<<< orphan*/  timeout; } ;

/* Variables and functions */
 int IP_VS_DIR_OUTPUT ; 
 size_t IP_VS_UDP_S_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (struct ip_vs_conn*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(struct ip_vs_conn *cp, int direction,
		     const struct sk_buff *skb,
		     struct ip_vs_proto_data *pd)
{
	if (FUNC2(!pd)) {
		FUNC1("UDP no ns data\n");
		return;
	}

	cp->timeout = pd->timeout_table[IP_VS_UDP_S_NORMAL];
	if (direction == IP_VS_DIR_OUTPUT)
		FUNC0(cp);
}