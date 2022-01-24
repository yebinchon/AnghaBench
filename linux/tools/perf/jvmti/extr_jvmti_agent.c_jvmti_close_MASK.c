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
struct TYPE_2__ {int total_size; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  id; } ;
struct jr_code_close {TYPE_1__ p; } ;
typedef  int /*<<< orphan*/  rec ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  JIT_CODE_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct jr_code_close*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int
FUNC5(void *agent)
{
	struct jr_code_close rec;
	FILE *fp = agent;

	if (!fp) {
		FUNC4("jvmti: invalid fd in close_agent");
		return -1;
	}

	rec.p.id = JIT_CODE_CLOSE;
	rec.p.total_size = sizeof(rec);

	rec.p.timestamp = FUNC3();

	if (!FUNC1(&rec, sizeof(rec), 1, fp))
		return -1;

	FUNC0(fp);

	fp = NULL;

	FUNC2();

	return 0;
}