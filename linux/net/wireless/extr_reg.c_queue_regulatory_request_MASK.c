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
struct regulatory_request {int /*<<< orphan*/  list; void** alpha2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reg_requests_list ; 
 int /*<<< orphan*/  reg_requests_lock ; 
 int /*<<< orphan*/  reg_work ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (void*) ; 

__attribute__((used)) static void FUNC5(struct regulatory_request *request)
{
	request->alpha2[0] = FUNC4(request->alpha2[0]);
	request->alpha2[1] = FUNC4(request->alpha2[1]);

	FUNC2(&reg_requests_lock);
	FUNC0(&request->list, &reg_requests_list);
	FUNC3(&reg_requests_lock);

	FUNC1(&reg_work);
}