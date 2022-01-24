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
struct option {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  callchain_param ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int) ; 

int FUNC1(const struct option *opt,
			       const char *arg,
			       int unset)
{
	return FUNC0(opt->value, &callchain_param, arg, unset);
}