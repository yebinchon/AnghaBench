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
struct TYPE_2__ {int type; } ;
union perf_event {TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  PERF_RECORD_AUX 140 
#define  PERF_RECORD_BPF_EVENT 139 
#define  PERF_RECORD_COMM 138 
#define  PERF_RECORD_EXIT 137 
#define  PERF_RECORD_FORK 136 
#define  PERF_RECORD_ITRACE_START 135 
#define  PERF_RECORD_KSYMBOL 134 
#define  PERF_RECORD_LOST 133 
#define  PERF_RECORD_MMAP 132 
#define  PERF_RECORD_MMAP2 131 
#define  PERF_RECORD_NAMESPACES 130 
#define  PERF_RECORD_SWITCH 129 
#define  PERF_RECORD_SWITCH_CPU_WIDE 128 
 size_t FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 size_t FUNC1 (union perf_event*,int /*<<< orphan*/ *) ; 
 size_t FUNC2 (union perf_event*,int /*<<< orphan*/ *) ; 
 size_t FUNC3 (union perf_event*,int /*<<< orphan*/ *) ; 
 size_t FUNC4 (union perf_event*,int /*<<< orphan*/ *) ; 
 size_t FUNC5 (union perf_event*,int /*<<< orphan*/ *) ; 
 size_t FUNC6 (union perf_event*,int /*<<< orphan*/ *) ; 
 size_t FUNC7 (union perf_event*,int /*<<< orphan*/ *) ; 
 size_t FUNC8 (union perf_event*,int /*<<< orphan*/ *) ; 
 size_t FUNC9 (union perf_event*,int /*<<< orphan*/ *) ; 
 size_t FUNC10 (union perf_event*,int /*<<< orphan*/ *) ; 
 size_t FUNC11 (union perf_event*,int /*<<< orphan*/ *) ; 
 char* FUNC12 (int) ; 

size_t FUNC13(union perf_event *event, FILE *fp)
{
	size_t ret = FUNC0(fp, "PERF_RECORD_%s",
			     FUNC12(event->header.type));

	switch (event->header.type) {
	case PERF_RECORD_COMM:
		ret += FUNC3(event, fp);
		break;
	case PERF_RECORD_FORK:
	case PERF_RECORD_EXIT:
		ret += FUNC11(event, fp);
		break;
	case PERF_RECORD_MMAP:
		ret += FUNC7(event, fp);
		break;
	case PERF_RECORD_NAMESPACES:
		ret += FUNC9(event, fp);
		break;
	case PERF_RECORD_MMAP2:
		ret += FUNC8(event, fp);
		break;
	case PERF_RECORD_AUX:
		ret += FUNC1(event, fp);
		break;
	case PERF_RECORD_ITRACE_START:
		ret += FUNC4(event, fp);
		break;
	case PERF_RECORD_SWITCH:
	case PERF_RECORD_SWITCH_CPU_WIDE:
		ret += FUNC10(event, fp);
		break;
	case PERF_RECORD_LOST:
		ret += FUNC6(event, fp);
		break;
	case PERF_RECORD_KSYMBOL:
		ret += FUNC5(event, fp);
		break;
	case PERF_RECORD_BPF_EVENT:
		ret += FUNC2(event, fp);
		break;
	default:
		ret += FUNC0(fp, "\n");
	}

	return ret;
}