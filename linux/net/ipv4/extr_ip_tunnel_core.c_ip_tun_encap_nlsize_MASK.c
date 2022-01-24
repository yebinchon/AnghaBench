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
struct lwtunnel_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct lwtunnel_state *lwtstate)
{
	return FUNC1(8)	/* LWTUNNEL_IP_ID */
		+ FUNC0(4)	/* LWTUNNEL_IP_DST */
		+ FUNC0(4)	/* LWTUNNEL_IP_SRC */
		+ FUNC0(1)	/* LWTUNNEL_IP_TOS */
		+ FUNC0(1)	/* LWTUNNEL_IP_TTL */
		+ FUNC0(2);	/* LWTUNNEL_IP_FLAGS */
}