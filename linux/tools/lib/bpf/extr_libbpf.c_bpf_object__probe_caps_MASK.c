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
struct bpf_object {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int (*) (struct bpf_object*)) ; 
 int /*<<< orphan*/  bpf_object__probe_btf_datasec ; 
 int /*<<< orphan*/  bpf_object__probe_btf_func ; 
 int /*<<< orphan*/  bpf_object__probe_global_data ; 
 int /*<<< orphan*/  bpf_object__probe_name ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int FUNC2 (struct bpf_object*) ; 

__attribute__((used)) static int
FUNC3(struct bpf_object *obj)
{
	int (*probe_fn[])(struct bpf_object *obj) = {
		bpf_object__probe_name,
		bpf_object__probe_global_data,
		bpf_object__probe_btf_func,
		bpf_object__probe_btf_datasec,
	};
	int i, ret;

	for (i = 0; i < FUNC0(probe_fn); i++) {
		ret = probe_fn[i](obj);
		if (ret < 0)
			FUNC1("Probe #%d failed with %d.\n", i, ret);
	}

	return 0;
}