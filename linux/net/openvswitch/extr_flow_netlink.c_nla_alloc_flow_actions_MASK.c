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
struct sw_flow_actions {scalar_t__ actions_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct sw_flow_actions* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_ACTIONS_BUFSIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct sw_flow_actions* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sw_flow_actions *FUNC3(int size)
{
	struct sw_flow_actions *sfa;

	FUNC1(size > MAX_ACTIONS_BUFSIZE);

	sfa = FUNC2(sizeof(*sfa) + size, GFP_KERNEL);
	if (!sfa)
		return FUNC0(-ENOMEM);

	sfa->actions_len = 0;
	return sfa;
}