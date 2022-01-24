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
struct perf_env {int dummy; } ;
struct evsel {int dummy; } ;

/* Variables and functions */
 char const* FUNC0 (char const*,int) ; 
 char* FUNC1 (struct perf_env*) ; 
 struct perf_env* FUNC2 (struct evsel*) ; 

__attribute__((used)) static const char *FUNC3(struct evsel *evsel, int err)
{
	struct perf_env *env = FUNC2(evsel);
	const char *arch_name = FUNC1(env);

	return FUNC0(arch_name, err);
}