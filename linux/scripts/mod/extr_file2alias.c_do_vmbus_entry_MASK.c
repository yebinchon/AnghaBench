#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * b; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* guid ; 
 int /*<<< orphan*/  hv_vmbus_device_id ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static int FUNC5(const char *filename, void *symval,
			  char *alias)
{
	int i;
	FUNC0(symval, hv_vmbus_device_id, guid);
	char guid_name[(sizeof(*guid) + 1) * 2];

	for (i = 0; i < (sizeof(*guid) * 2); i += 2)
		FUNC2(&guid_name[i], "%02x", FUNC1((guid->b)[i/2]));

	FUNC4(alias, "vmbus:");
	FUNC3(alias, guid_name);

	return 1;
}