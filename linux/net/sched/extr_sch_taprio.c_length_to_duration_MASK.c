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
struct taprio_sched {int /*<<< orphan*/  picos_per_byte; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(struct taprio_sched *q, int len)
{
	return FUNC1(len * FUNC0(&q->picos_per_byte), 1000);
}