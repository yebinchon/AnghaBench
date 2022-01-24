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
struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ irq_capable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int HZ ; 
 int /*<<< orphan*/  MAX_NICE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* cur_ops ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (struct timer_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct timer_list*) ; 
 scalar_t__ irqreader ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct timer_list*,int) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  rand ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu_torture_timer ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct timer_list*) ; 
 int /*<<< orphan*/  FUNC12 (struct timer_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static int
FUNC15(void *arg)
{
	unsigned long lastsleep = jiffies;
	long myid = (long)arg;
	int mynumonline = myid;
	FUNC0(rand);
	struct timer_list t;

	FUNC1("rcu_torture_reader task started");
	FUNC8(current, MAX_NICE);
	if (irqreader && cur_ops->irq_capable)
		FUNC12(&t, rcu_torture_timer, 0);

	do {
		if (irqreader && cur_ops->irq_capable) {
			if (!FUNC11(&t))
				FUNC4(&t, jiffies + 1);
		}
		if (!FUNC6(&rand))
			FUNC7(HZ);
		if (FUNC10(jiffies, lastsleep)) {
			FUNC7(1);
			lastsleep = jiffies + 10;
		}
		while (FUNC5() < mynumonline && !FUNC14())
			FUNC7(HZ / 5);
		FUNC9("rcu_torture_reader");
	} while (!FUNC14());
	if (irqreader && cur_ops->irq_capable) {
		FUNC2(&t);
		FUNC3(&t);
	}
	FUNC13("rcu_torture_reader");
	return 0;
}