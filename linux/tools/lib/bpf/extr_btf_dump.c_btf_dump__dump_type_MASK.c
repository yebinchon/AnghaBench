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
struct btf_dump {int emit_queue_cnt; int /*<<< orphan*/ * emit_queue; TYPE_1__* type_states; void* cached_names; int /*<<< orphan*/  btf; } ;
typedef  scalar_t__ __u32 ;
struct TYPE_2__ {int /*<<< orphan*/  emit_state; int /*<<< orphan*/  order_state; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  EMITTED ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ORDERED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct btf_dump*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct btf_dump*) ; 
 int FUNC3 (struct btf_dump*,scalar_t__,int) ; 
 void* FUNC4 (scalar_t__,int) ; 

int FUNC5(struct btf_dump *d, __u32 id)
{
	int err, i;

	if (id > FUNC0(d->btf))
		return -EINVAL;

	/* type states are lazily allocated, as they might not be needed */
	if (!d->type_states) {
		d->type_states = FUNC4(1 + FUNC0(d->btf),
					sizeof(d->type_states[0]));
		if (!d->type_states)
			return -ENOMEM;
		d->cached_names = FUNC4(1 + FUNC0(d->btf),
					 sizeof(d->cached_names[0]));
		if (!d->cached_names)
			return -ENOMEM;

		/* VOID is special */
		d->type_states[0].order_state = ORDERED;
		d->type_states[0].emit_state = EMITTED;

		/* eagerly determine referenced types for anon enums */
		err = FUNC2(d);
		if (err)
			return err;
	}

	d->emit_queue_cnt = 0;
	err = FUNC3(d, id, false);
	if (err < 0)
		return err;

	for (i = 0; i < d->emit_queue_cnt; i++)
		FUNC1(d, d->emit_queue[i], 0 /*top-level*/);

	return 0;
}