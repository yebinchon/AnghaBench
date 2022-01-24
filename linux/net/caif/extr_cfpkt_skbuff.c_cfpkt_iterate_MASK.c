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
typedef  int u16 ;
struct TYPE_2__ {void* data; } ;
struct cfpkt {TYPE_1__ skb; } ;

/* Variables and functions */
 int EPROTO ; 
 int /*<<< orphan*/  FUNC0 (struct cfpkt*,char*) ; 
 int FUNC1 (struct cfpkt*) ; 
 int FUNC2 (struct cfpkt*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(struct cfpkt *pkt,
		  u16 (*iter_func)(u16, void *, u16),
		  u16 data)
{
	/*
	 * Don't care about the performance hit of linearizing,
	 * Checksum should not be used on high-speed interfaces anyway.
	 */
	if (FUNC4(FUNC2(pkt)))
		return -EPROTO;
	if (FUNC4(FUNC3(&pkt->skb) != 0)) {
		FUNC0(pkt, "linearize failed\n");
		return -EPROTO;
	}
	return iter_func(data, pkt->skb.data, FUNC1(pkt));
}