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
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void FUNC1(void)
{
	FUNC0("Usage: tc_l2_ipip_redirect [...]\n");
	FUNC0("       -U <file>   Update an already pinned BPF array\n");
	FUNC0("       -i <ifindex> Interface index\n");
	FUNC0("       -h          Display this help\n");
}