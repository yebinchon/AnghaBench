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
struct tep_event {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pevent; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct tep_event* FUNC0 (int /*<<< orphan*/ ) ; 
 struct tep_event* FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__ tevent ; 
 int /*<<< orphan*/  tevent_initialized ; 
 scalar_t__ FUNC2 () ; 

struct tep_event *FUNC3(int id)
{
	if (!tevent_initialized && FUNC2())
		return FUNC0(-ENOMEM);

	return FUNC1(tevent.pevent, id);
}