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
typedef  int u32 ;
struct db_export {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {char* name; int branch_type; } ;

/* Variables and functions */
 int PERF_IP_FLAG_BRANCH ; 
 int PERF_IP_FLAG_TRACE_BEGIN ; 
 int PERF_IP_FLAG_TRACE_END ; 
 TYPE_1__* branch_types ; 
 int FUNC0 (struct db_export*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char const*) ; 

int FUNC2(struct db_export *dbe)
{
	int i, err = 0;

	for (i = 0; branch_types[i].name ; i++) {
		err = FUNC0(dbe, branch_types[i].branch_type,
					     branch_types[i].name);
		if (err)
			break;
	}

	/* Add trace begin / end variants */
	for (i = 0; branch_types[i].name ; i++) {
		const char *name = branch_types[i].name;
		u32 type = branch_types[i].branch_type;
		char buf[64];

		if (type == PERF_IP_FLAG_BRANCH ||
		    (type & (PERF_IP_FLAG_TRACE_BEGIN | PERF_IP_FLAG_TRACE_END)))
			continue;

		FUNC1(buf, sizeof(buf), "trace begin / %s", name);
		err = FUNC0(dbe, type | PERF_IP_FLAG_TRACE_BEGIN, buf);
		if (err)
			break;

		FUNC1(buf, sizeof(buf), "%s / trace end", name);
		err = FUNC0(dbe, type | PERF_IP_FLAG_TRACE_END, buf);
		if (err)
			break;
	}

	return err;
}