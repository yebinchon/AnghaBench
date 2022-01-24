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
typedef  enum mf_result { ____Placeholder_mf_result } mf_result ;
typedef  enum mf_action_page_type { ____Placeholder_mf_action_page_type } mf_action_page_type ;

/* Variables and functions */
 int /*<<< orphan*/ * action_name ; 
 int /*<<< orphan*/ * action_page_types ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int,int) ; 

__attribute__((used)) static void FUNC2(unsigned long pfn, enum mf_action_page_type type,
			  enum mf_result result)
{
	FUNC1(pfn, type, result);

	FUNC0("Memory failure: %#lx: recovery action for %s: %s\n",
		pfn, action_page_types[type], action_name[result]);
}