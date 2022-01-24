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
 int /*<<< orphan*/  EINVAL ; 
 struct bpf_object* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bpf_object*) ; 
 struct bpf_object* FUNC2 (void*,size_t,char const*) ; 
 int libbpf_initialized ; 
 int /*<<< orphan*/  libbpf_perf_print ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

struct bpf_object *
FUNC5(void *obj_buf, size_t obj_buf_sz, const char *name)
{
	struct bpf_object *obj;

	if (!libbpf_initialized) {
		FUNC3(libbpf_perf_print);
		libbpf_initialized = true;
	}

	obj = FUNC2(obj_buf, obj_buf_sz, name);
	if (FUNC1(obj)) {
		FUNC4("bpf: failed to load buffer\n");
		return FUNC0(-EINVAL);
	}

	return obj;
}