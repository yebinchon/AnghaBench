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
struct rtgenmsg {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 size_t FUNC1 (size_t) ; 

__attribute__((used)) static size_t FUNC2(size_t payloadlen)
{
	size_t len =
		FUNC0(sizeof(struct rtgenmsg))
		+ FUNC1(1)	/* IPMRA_CREPORT_MSGTYPE */
		+ FUNC1(4)	/* IPMRA_CREPORT_VIF_ID */
		+ FUNC1(4)	/* IPMRA_CREPORT_SRC_ADDR */
		+ FUNC1(4)	/* IPMRA_CREPORT_DST_ADDR */
					/* IPMRA_CREPORT_PKT */
		+ FUNC1(payloadlen)
		;

	return len;
}