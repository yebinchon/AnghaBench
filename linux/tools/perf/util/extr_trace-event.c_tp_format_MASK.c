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
struct tep_handle {int dummy; } ;
struct tep_event {int dummy; } ;
struct TYPE_2__ {struct tep_handle* pevent; } ;

/* Variables and functions */
 struct tep_event* FUNC0 (int) ; 
 int PATH_MAX ; 
 int errno ; 
 int FUNC1 (char*,char**,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct tep_handle*,struct tep_event**,char*,size_t,char const*) ; 
 TYPE_1__ tevent ; 

__attribute__((used)) static struct tep_event*
FUNC7(const char *sys, const char *name)
{
	char *tp_dir = FUNC3(sys);
	struct tep_handle *pevent = tevent.pevent;
	struct tep_event *event = NULL;
	char path[PATH_MAX];
	size_t size;
	char *data;
	int err;

	if (!tp_dir)
		return FUNC0(-errno);

	FUNC5(path, PATH_MAX, "%s/%s/format", tp_dir, name);
	FUNC4(tp_dir);

	err = FUNC1(path, &data, &size);
	if (err)
		return FUNC0(err);

	FUNC6(pevent, &event, data, size, sys);

	FUNC2(data);
	return event;
}