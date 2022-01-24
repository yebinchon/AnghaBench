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
struct trace_probe {int nr_args; TYPE_1__* args; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {char* name; char* comm; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_ARGSTR_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*,char*) ; 
 scalar_t__ FUNC1 (char*,char const*) ; 

bool FUNC2(struct trace_probe *tp,
				    int argc, const char **argv)
{
	char buf[MAX_ARGSTR_LEN + 1];
	int i;

	if (tp->nr_args < argc)
		return false;

	for (i = 0; i < argc; i++) {
		FUNC0(buf, sizeof(buf), "%s=%s",
			 tp->args[i].name, tp->args[i].comm);
		if (FUNC1(buf, argv[i]))
			return false;
	}
	return true;
}