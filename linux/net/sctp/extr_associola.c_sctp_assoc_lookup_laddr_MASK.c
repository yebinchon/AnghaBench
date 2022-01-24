#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  sin_port; } ;
union sctp_addr {TYPE_1__ v4; } ;
struct TYPE_6__ {scalar_t__ port; } ;
struct TYPE_5__ {int /*<<< orphan*/  sk; TYPE_3__ bind_addr; } ;
struct sctp_association {TYPE_2__ base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_3__*,union sctp_addr const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct sctp_association *asoc,
			    const union sctp_addr *laddr)
{
	int found = 0;

	if ((asoc->base.bind_addr.port == FUNC0(laddr->v4.sin_port)) &&
	    FUNC1(&asoc->base.bind_addr, laddr,
				 FUNC2(asoc->base.sk)))
		found = 1;

	return found;
}