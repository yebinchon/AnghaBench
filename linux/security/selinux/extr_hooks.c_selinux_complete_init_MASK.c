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
 int /*<<< orphan*/  delayed_superblock_init ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2(void)
{
	FUNC1("SELinux:  Completing initialization.\n");

	/* Set up any superblocks initialized prior to the policy load. */
	FUNC1("SELinux:  Setting up existing superblocks.\n");
	FUNC0(delayed_superblock_init, NULL);
}