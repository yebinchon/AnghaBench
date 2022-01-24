#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tep_handle {int dummy; } ;
struct TYPE_3__ {struct tep_handle* pevent; } ;

/* Variables and functions */
 int /*<<< orphan*/  TEP_NSEC_OUTPUT ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct tep_handle*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tep_handle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tep_handle*,int) ; 
 TYPE_1__ tevent ; 
 int tevent_initialized ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(void)
{
	int be = FUNC0();
	struct tep_handle *pevent;

	if (FUNC4(&tevent))
		return -1;

	pevent = tevent.pevent;
	FUNC2(pevent, TEP_NSEC_OUTPUT);
	FUNC1(pevent, be);
	FUNC3(pevent, be);
	tevent_initialized = true;
	return 0;
}