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
struct tep_event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct tep_event* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tevent_initialized ; 
 struct tep_event* FUNC1 (char const*,char const*) ; 
 scalar_t__ FUNC2 () ; 

struct tep_event*
FUNC3(const char *sys, const char *name)
{
	if (!tevent_initialized && FUNC2())
		return FUNC0(-ENOMEM);

	return FUNC1(sys, name);
}