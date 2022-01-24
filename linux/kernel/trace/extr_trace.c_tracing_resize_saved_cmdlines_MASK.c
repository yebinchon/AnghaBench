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
struct saved_cmdlines_buffer {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (unsigned int,struct saved_cmdlines_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct saved_cmdlines_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct saved_cmdlines_buffer*) ; 
 struct saved_cmdlines_buffer* FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct saved_cmdlines_buffer* savedcmd ; 
 int /*<<< orphan*/  trace_cmdline_lock ; 

__attribute__((used)) static int FUNC6(unsigned int val)
{
	struct saved_cmdlines_buffer *s, *savedcmd_temp;

	s = FUNC5(sizeof(*s), GFP_KERNEL);
	if (!s)
		return -ENOMEM;

	if (FUNC0(val, s) < 0) {
		FUNC4(s);
		return -ENOMEM;
	}

	FUNC1(&trace_cmdline_lock);
	savedcmd_temp = savedcmd;
	savedcmd = s;
	FUNC2(&trace_cmdline_lock);
	FUNC3(savedcmd_temp);

	return 0;
}