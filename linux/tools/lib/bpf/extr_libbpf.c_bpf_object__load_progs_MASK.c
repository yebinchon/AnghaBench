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
struct bpf_object {size_t nr_programs; int /*<<< orphan*/  kern_version; int /*<<< orphan*/  license; TYPE_1__* programs; } ;
struct TYPE_3__ {int log_level; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,struct bpf_object*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct bpf_object *obj, int log_level)
{
	size_t i;
	int err;

	for (i = 0; i < obj->nr_programs; i++) {
		if (FUNC0(&obj->programs[i], obj))
			continue;
		obj->programs[i].log_level |= log_level;
		err = FUNC1(&obj->programs[i],
					obj->license,
					obj->kern_version);
		if (err)
			return err;
	}
	return 0;
}