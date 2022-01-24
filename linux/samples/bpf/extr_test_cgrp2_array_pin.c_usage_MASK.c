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
	FUNC0("Usage: test_cgrp2_array_pin [...]\n");
	FUNC0("       -F <file>   File to pin an BPF cgroup array\n");
	FUNC0("       -U <file>   Update an already pinned BPF cgroup array\n");
	FUNC0("       -v <value>  Full path of the cgroup2\n");
	FUNC0("       -h          Display this help\n");
}