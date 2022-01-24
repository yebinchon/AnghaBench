#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t nr_namespaces; struct perf_ns_link_info* link_info; void* tid; void* pid; } ;
union perf_event {TYPE_1__ namespaces; } ;
typedef  size_t u64 ;
struct perf_ns_link_info {size_t dev; size_t ino; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (union perf_event*,struct perf_ns_link_info*) ; 

__attribute__((used)) static void FUNC3(union perf_event *event,
					bool sample_id_all)
{
	u64 i;

	event->namespaces.pid		= FUNC0(event->namespaces.pid);
	event->namespaces.tid		= FUNC0(event->namespaces.tid);
	event->namespaces.nr_namespaces	= FUNC1(event->namespaces.nr_namespaces);

	for (i = 0; i < event->namespaces.nr_namespaces; i++) {
		struct perf_ns_link_info *ns = &event->namespaces.link_info[i];

		ns->dev = FUNC1(ns->dev);
		ns->ino = FUNC1(ns->ino);
	}

	if (sample_id_all)
		FUNC2(event, &event->namespaces.link_info[i]);
}