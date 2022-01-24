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
typedef  int /*<<< orphan*/  u32 ;
struct sctp_transport {int /*<<< orphan*/  ipaddr; TYPE_3__* asoc; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_4__ {int /*<<< orphan*/  port; } ;
struct TYPE_5__ {TYPE_1__ bind_addr; int /*<<< orphan*/  sk; } ;
struct TYPE_6__ {TYPE_2__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline __u32 FUNC3(const void *data, u32 len, u32 seed)
{
	const struct sctp_transport *t = data;

	return FUNC1(FUNC2(t->asoc->base.sk),
			   FUNC0(t->asoc->base.bind_addr.port),
			   &t->ipaddr, seed);
}