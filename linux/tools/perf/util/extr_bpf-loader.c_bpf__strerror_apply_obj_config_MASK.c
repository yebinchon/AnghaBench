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
 int /*<<< orphan*/  BPF_LOADER_ERRNO__OBJCONF_MAP_EVTDIM ; 
 int /*<<< orphan*/  BPF_LOADER_ERRNO__OBJCONF_MAP_EVTINH ; 
 int /*<<< orphan*/  BPF_LOADER_ERRNO__OBJCONF_MAP_EVTTYPE ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,size_t) ; 
 int /*<<< orphan*/  emsg ; 

int FUNC3(int err, char *buf, size_t size)
{
	FUNC2(err, buf, size);
	FUNC1(BPF_LOADER_ERRNO__OBJCONF_MAP_EVTDIM,
			    "Cannot set event to BPF map in multi-thread tracing");
	FUNC1(BPF_LOADER_ERRNO__OBJCONF_MAP_EVTINH,
			    "%s (Hint: use -i to turn off inherit)", emsg);
	FUNC1(BPF_LOADER_ERRNO__OBJCONF_MAP_EVTTYPE,
			    "Can only put raw, hardware and BPF output event into a BPF map");
	FUNC0(buf, size);
	return 0;
}