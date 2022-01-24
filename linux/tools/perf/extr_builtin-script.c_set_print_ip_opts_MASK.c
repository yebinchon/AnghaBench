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
struct perf_event_attr {int /*<<< orphan*/  type; } ;
struct TYPE_2__ {int /*<<< orphan*/  print_ip_opts; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSO ; 
 int /*<<< orphan*/  EVSEL__PRINT_DSO ; 
 int /*<<< orphan*/  EVSEL__PRINT_IP ; 
 int /*<<< orphan*/  EVSEL__PRINT_SRCLINE ; 
 int /*<<< orphan*/  EVSEL__PRINT_SYM ; 
 int /*<<< orphan*/  EVSEL__PRINT_SYMOFFSET ; 
 int /*<<< orphan*/  IP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRCLINE ; 
 int /*<<< orphan*/  SYM ; 
 int /*<<< orphan*/  SYMOFFSET ; 
 TYPE_1__* output ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct perf_event_attr *attr)
{
	unsigned int type = FUNC1(attr->type);

	output[type].print_ip_opts = 0;
	if (FUNC0(IP))
		output[type].print_ip_opts |= EVSEL__PRINT_IP;

	if (FUNC0(SYM))
		output[type].print_ip_opts |= EVSEL__PRINT_SYM;

	if (FUNC0(DSO))
		output[type].print_ip_opts |= EVSEL__PRINT_DSO;

	if (FUNC0(SYMOFFSET))
		output[type].print_ip_opts |= EVSEL__PRINT_SYMOFFSET;

	if (FUNC0(SRCLINE))
		output[type].print_ip_opts |= EVSEL__PRINT_SRCLINE;
}