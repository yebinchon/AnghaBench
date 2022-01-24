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
struct bpf_object {int dummy; } ;
struct TYPE_2__ {char* name; int* flag; int val; } ;

/* Variables and functions */
 char* __doc__ ; 
 TYPE_1__* long_options ; 
 int /*<<< orphan*/  FUNC0 (struct bpf_object*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(char *argv[], struct bpf_object *obj)
{
	int i;

	FUNC1("\nDOCUMENTATION:\n%s\n", __doc__);
	FUNC1("\n");
	FUNC1(" Usage: %s (options-see-below)\n", argv[0]);
	FUNC1(" Listing options:\n");
	for (i = 0; long_options[i].name != 0; i++) {
		FUNC1(" --%-12s", long_options[i].name);
		if (long_options[i].flag != NULL)
			FUNC1(" flag (internal value:%d)",
				*long_options[i].flag);
		else
			FUNC1(" short-option: -%c",
				long_options[i].val);
		FUNC1("\n");
	}
	FUNC1("\n Programs to be used for --progname:\n");
	FUNC0(obj);
	FUNC1("\n");
}