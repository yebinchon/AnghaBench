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
struct sugov_cpu {unsigned long max; int /*<<< orphan*/  cpu; int /*<<< orphan*/  bw_dl; } ;
struct rq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FREQUENCY_UTIL ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rq*) ; 
 struct rq* FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (struct rq*) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned long FUNC5(struct sugov_cpu *sg_cpu)
{
	struct rq *rq = FUNC2(sg_cpu->cpu);
	unsigned long util = FUNC3(rq);
	unsigned long max = FUNC0(sg_cpu->cpu);

	sg_cpu->max = max;
	sg_cpu->bw_dl = FUNC1(rq);

	return FUNC4(sg_cpu->cpu, util, max, FREQUENCY_UTIL, NULL);
}