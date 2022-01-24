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
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,scalar_t__) ; 

__attribute__((used)) static inline int FUNC2(const char *str, const char *prefix)
{
	return FUNC0(str) > FUNC0(prefix) &&
		FUNC1(str, prefix, FUNC0(prefix)) == 0;
}