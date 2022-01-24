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
struct xyarray {int row_size; int entry_size; unsigned int entries; } ;
struct perf_event_attr {scalar_t__ type; scalar_t__ inherit; } ;
struct TYPE_2__ {struct perf_event_attr attr; struct xyarray* fd; } ;
struct evsel {TYPE_1__ core; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_ANY ; 
 int BPF_LOADER_ERRNO__INTERNAL ; 
 int BPF_LOADER_ERRNO__OBJCONF_MAP_EVTDIM ; 
 int BPF_LOADER_ERRNO__OBJCONF_MAP_EVTINH ; 
 int BPF_LOADER_ERRNO__OBJCONF_MAP_EVTTYPE ; 
 int BPF_LOADER_ERRNO__OBJCONF_MAP_MAPSIZE ; 
 scalar_t__ PERF_TYPE_HARDWARE ; 
 scalar_t__ PERF_TYPE_RAW ; 
 int FUNC0 (int,void*,int*,int /*<<< orphan*/ ) ; 
 int errno ; 
 scalar_t__ FUNC1 (struct evsel*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int* FUNC3 (struct xyarray*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(const char *name, int map_fd, void *pkey,
			   struct evsel *evsel)
{
	struct xyarray *xy = evsel->core.fd;
	struct perf_event_attr *attr;
	unsigned int key, events;
	bool check_pass = false;
	int *evt_fd;
	int err;

	if (!xy) {
		FUNC2("ERROR: evsel not ready for map %s\n", name);
		return -BPF_LOADER_ERRNO__INTERNAL;
	}

	if (xy->row_size / xy->entry_size != 1) {
		FUNC2("ERROR: Dimension of target event is incorrect for map %s\n",
			 name);
		return -BPF_LOADER_ERRNO__OBJCONF_MAP_EVTDIM;
	}

	attr = &evsel->core.attr;
	if (attr->inherit) {
		FUNC2("ERROR: Can't put inherit event into map %s\n", name);
		return -BPF_LOADER_ERRNO__OBJCONF_MAP_EVTINH;
	}

	if (FUNC1(evsel))
		check_pass = true;
	if (attr->type == PERF_TYPE_RAW)
		check_pass = true;
	if (attr->type == PERF_TYPE_HARDWARE)
		check_pass = true;
	if (!check_pass) {
		FUNC2("ERROR: Event type is wrong for map %s\n", name);
		return -BPF_LOADER_ERRNO__OBJCONF_MAP_EVTTYPE;
	}

	events = xy->entries / (xy->row_size / xy->entry_size);
	key = *((unsigned int *)pkey);
	if (key >= events) {
		FUNC2("ERROR: there is no event %d for map %s\n",
			 key, name);
		return -BPF_LOADER_ERRNO__OBJCONF_MAP_MAPSIZE;
	}
	evt_fd = FUNC3(xy, key, 0);
	err = FUNC0(map_fd, pkey, evt_fd, BPF_ANY);
	if (err && errno)
		err = -errno;
	return err;
}