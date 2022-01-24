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
struct evlist {int dummy; } ;
struct auxtrace_record {int dummy; } ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 struct auxtrace_record* FUNC0 (struct evlist*,int*) ; 
 int FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

struct auxtrace_record *FUNC3(struct evlist *evlist,
					      int *err)
{
	char buffer[64];
	int ret;

	*err = 0;

	ret = FUNC1(buffer, sizeof(buffer));
	if (ret) {
		*err = ret;
		return NULL;
	}

	if (!FUNC2(buffer, "GenuineIntel,", 13))
		return FUNC0(evlist, err);

	return NULL;
}