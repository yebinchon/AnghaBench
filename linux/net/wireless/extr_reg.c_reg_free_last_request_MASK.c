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
 struct regulatory_request core_request_world ; 
 struct regulatory_request* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct regulatory_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu_head ; 

__attribute__((used)) static void FUNC2(void)
{
	struct regulatory_request *lr = FUNC0();

	if (lr != &core_request_world && lr)
		FUNC1(lr, rcu_head);
}