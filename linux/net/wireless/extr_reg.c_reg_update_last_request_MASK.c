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
struct regulatory_request {int dummy; } ;

/* Variables and functions */
 struct regulatory_request* FUNC0 () ; 
 int /*<<< orphan*/  last_request ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct regulatory_request*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct regulatory_request *request)
{
	struct regulatory_request *lr;

	lr = FUNC0();
	if (lr == request)
		return;

	FUNC2();
	FUNC1(last_request, request);
}