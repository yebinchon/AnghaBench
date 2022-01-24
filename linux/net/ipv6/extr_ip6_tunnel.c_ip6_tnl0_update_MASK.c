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
struct TYPE_2__ {int /*<<< orphan*/  proto; } ;
struct ip6_tnl {int /*<<< orphan*/  dev; TYPE_1__ parms; } ;
struct __ip6_tnl_parm {int /*<<< orphan*/  proto; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct ip6_tnl *t, struct __ip6_tnl_parm *p)
{
	/* for default tnl0 device allow to change only the proto */
	t->parms.proto = p->proto;
	FUNC0(t->dev);
	return 0;
}