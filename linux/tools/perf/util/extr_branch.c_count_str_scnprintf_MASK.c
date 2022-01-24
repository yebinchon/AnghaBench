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
 int FUNC0 (char*,int,char*,char*,char const*) ; 

__attribute__((used)) static int FUNC1(int idx, const char *str, char *bf, int size)
{
	return FUNC0(bf, size, "%s%s", (idx) ? " " : " (", str);
}