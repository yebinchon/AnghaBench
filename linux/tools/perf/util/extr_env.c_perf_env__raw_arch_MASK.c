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
struct perf_env {char const* arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_env*) ; 

const char *FUNC1(struct perf_env *env)
{
	return env && !FUNC0(env) ? env->arch : "unknown";
}