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
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static inline int FUNC1(const char *license)
{
	return (FUNC0(license, "GPL") == 0
		|| FUNC0(license, "GPL v2") == 0
		|| FUNC0(license, "GPL and additional rights") == 0
		|| FUNC0(license, "Dual BSD/GPL") == 0
		|| FUNC0(license, "Dual MIT/GPL") == 0
		|| FUNC0(license, "Dual MPL/GPL") == 0);
}