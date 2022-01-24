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
struct pimhdr {int dummy; } ;
struct net_bridge_port {int dummy; } ;
struct net_bridge {int dummy; } ;
typedef  int /*<<< orphan*/  _pimhdr ;

/* Variables and functions */
 scalar_t__ PIM_TYPE_HELLO ; 
 scalar_t__ PIM_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge*,struct net_bridge_port*) ; 
 scalar_t__ FUNC1 (struct pimhdr*) ; 
 scalar_t__ FUNC2 (struct pimhdr*) ; 
 struct pimhdr* FUNC3 (struct sk_buff const*,unsigned int,int,struct pimhdr*) ; 
 unsigned int FUNC4 (struct sk_buff const*) ; 

__attribute__((used)) static void FUNC5(struct net_bridge *br,
			     struct net_bridge_port *port,
			     const struct sk_buff *skb)
{
	unsigned int offset = FUNC4(skb);
	struct pimhdr *pimhdr, _pimhdr;

	pimhdr = FUNC3(skb, offset, sizeof(_pimhdr), &_pimhdr);
	if (!pimhdr || FUNC2(pimhdr) != PIM_VERSION ||
	    FUNC1(pimhdr) != PIM_TYPE_HELLO)
		return;

	FUNC0(br, port);
}