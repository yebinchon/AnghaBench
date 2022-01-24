#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int exclude_user; int exclude_hv; int precise_ip; int /*<<< orphan*/  exclude_kernel; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;
struct evlist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct evsel* FUNC1 (struct evlist*) ; 
 int FUNC2 (struct evlist*) ; 

__attribute__((used)) static int FUNC3(struct evlist *evlist)
{
	struct evsel *evsel = FUNC1(evlist);

	FUNC0("wrong exclude_user", evsel->core.attr.exclude_user);
	FUNC0("wrong exclude_kernel", !evsel->core.attr.exclude_kernel);
	FUNC0("wrong exclude_hv", evsel->core.attr.exclude_hv);
	FUNC0("wrong precise_ip", evsel->core.attr.precise_ip);

	return FUNC2(evlist);
}