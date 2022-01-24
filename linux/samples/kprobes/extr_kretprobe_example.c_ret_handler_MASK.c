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
struct pt_regs {int dummy; } ;
struct my_data {int /*<<< orphan*/  entry_stamp; } ;
struct kretprobe_instance {scalar_t__ data; } ;
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  func_name ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,unsigned long,long long) ; 
 unsigned long FUNC4 (struct pt_regs*) ; 

__attribute__((used)) static int FUNC5(struct kretprobe_instance *ri, struct pt_regs *regs)
{
	unsigned long retval = FUNC4(regs);
	struct my_data *data = (struct my_data *)ri->data;
	s64 delta;
	ktime_t now;

	now = FUNC0();
	delta = FUNC2(FUNC1(now, data->entry_stamp));
	FUNC3("%s returned %lu and took %lld ns to execute\n",
			func_name, retval, (long long)delta);
	return 0;
}