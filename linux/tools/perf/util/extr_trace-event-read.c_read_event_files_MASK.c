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
struct tep_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct tep_handle*) ; 
 unsigned long long FUNC2 (struct tep_handle*) ; 
 int FUNC3 (struct tep_handle*,char*,unsigned long long) ; 
 char* FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct tep_handle *pevent)
{
	unsigned long long size;
	char *sys;
	int systems;
	int count;
	int i,x;
	int ret;

	systems = FUNC1(pevent);

	for (i = 0; i < systems; i++) {
		sys = FUNC4();
		if (sys == NULL)
			return -1;

		count = FUNC1(pevent);

		for (x=0; x < count; x++) {
			size = FUNC2(pevent);
			ret = FUNC3(pevent, sys, size);
			if (ret) {
				FUNC0(sys);
				return ret;
			}
		}
		FUNC0(sys);
	}
	return 0;
}