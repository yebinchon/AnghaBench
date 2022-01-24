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
typedef  int /*<<< orphan*/  tsc ;
struct tc_service_curve {void* m2; int /*<<< orphan*/  d; void* m1; } ;
struct sk_buff {int len; } ;
struct internal_sc {int /*<<< orphan*/  sm2; int /*<<< orphan*/  dx; int /*<<< orphan*/  sm1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int,int,struct tc_service_curve*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct sk_buff *skb, int attr, struct internal_sc *sc)
{
	struct tc_service_curve tsc;

	tsc.m1 = FUNC2(sc->sm1);
	tsc.d  = FUNC0(sc->dx);
	tsc.m2 = FUNC2(sc->sm2);
	if (FUNC1(skb, attr, sizeof(tsc), &tsc))
		goto nla_put_failure;

	return skb->len;

 nla_put_failure:
	return -1;
}