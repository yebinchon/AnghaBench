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
struct bpf_object_load_attr {struct bpf_object* obj; } ;
struct bpf_object {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bpf_object_load_attr*) ; 

int FUNC1(struct bpf_object *obj)
{
	struct bpf_object_load_attr attr = {
		.obj = obj,
	};

	return FUNC0(&attr);
}