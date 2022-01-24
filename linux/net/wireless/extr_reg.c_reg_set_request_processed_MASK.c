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
struct regulatory_request {int processed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct regulatory_request* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reg_requests_list ; 
 int /*<<< orphan*/  reg_requests_lock ; 
 int /*<<< orphan*/  reg_work ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void)
{
	bool need_more_processing = false;
	struct regulatory_request *lr = FUNC1();

	lr->processed = true;

	FUNC4(&reg_requests_lock);
	if (!FUNC2(&reg_requests_list))
		need_more_processing = true;
	FUNC5(&reg_requests_lock);

	FUNC0();

	if (need_more_processing)
		FUNC3(&reg_work);
}