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
struct evlist {int dummy; } ;
struct cgroup {int dummy; } ;

/* Variables and functions */
 struct cgroup* FUNC0 (char const*) ; 
 struct cgroup* FUNC1 (struct evlist*,char const*) ; 

struct cgroup *FUNC2(struct evlist *evlist, const char *name)
{
	struct cgroup *cgroup = FUNC1(evlist, name);

	return cgroup ?: FUNC0(name);
}