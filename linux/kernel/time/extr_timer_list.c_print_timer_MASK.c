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
typedef  scalar_t__ u64 ;
struct seq_file {int dummy; } ;
struct hrtimer {int /*<<< orphan*/  state; struct hrtimer* function; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct hrtimer*) ; 
 int /*<<< orphan*/  FUNC2 (struct hrtimer*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,struct hrtimer*) ; 

__attribute__((used)) static void
FUNC5(struct seq_file *m, struct hrtimer *taddr, struct hrtimer *timer,
	    int idx, u64 now)
{
	FUNC0(m, " #%d: ", idx);
	FUNC4(m, taddr);
	FUNC0(m, ", ");
	FUNC4(m, timer->function);
	FUNC0(m, ", S:%02x", timer->state);
	FUNC0(m, "\n");
	FUNC0(m, " # expires at %Lu-%Lu nsecs [in %Ld to %Ld nsecs]\n",
		(unsigned long long)FUNC3(FUNC2(timer)),
		(unsigned long long)FUNC3(FUNC1(timer)),
		(long long)(FUNC3(FUNC2(timer)) - now),
		(long long)(FUNC3(FUNC1(timer)) - now));
}