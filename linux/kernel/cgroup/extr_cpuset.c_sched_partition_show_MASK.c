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
struct seq_file {int dummy; } ;
struct cpuset {int partition_root_state; } ;

/* Variables and functions */
#define  PRS_DISABLED 130 
#define  PRS_ENABLED 129 
#define  PRS_ERROR 128 
 struct cpuset* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC3(struct seq_file *seq, void *v)
{
	struct cpuset *cs = FUNC0(FUNC1(seq));

	switch (cs->partition_root_state) {
	case PRS_ENABLED:
		FUNC2(seq, "root\n");
		break;
	case PRS_DISABLED:
		FUNC2(seq, "member\n");
		break;
	case PRS_ERROR:
		FUNC2(seq, "root invalid\n");
		break;
	}
	return 0;
}