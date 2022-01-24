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

/* Variables and functions */
 int /*<<< orphan*/  TEP_EVENT_ITEM ; 
 int /*<<< orphan*/  TEP_EVENT_OP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static char *FUNC3(void)
{
	char *token;

	if (FUNC2(TEP_EVENT_ITEM, "name") < 0)
		return NULL;

	if (FUNC2(TEP_EVENT_OP, ":") < 0)
		return NULL;

	if (FUNC1(TEP_EVENT_ITEM, &token) < 0)
		goto fail;

	return token;

 fail:
	FUNC0(token);
	return NULL;
}