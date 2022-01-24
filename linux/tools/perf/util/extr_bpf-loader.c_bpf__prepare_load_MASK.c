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
struct TYPE_2__ {scalar_t__ dump_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_LOADER_ERRNO__COMPILE ; 
 struct bpf_object* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bpf_object*) ; 
 struct bpf_object* FUNC2 (char const*) ; 
 struct bpf_object* FUNC3 (void*,size_t,char const*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int libbpf_initialized ; 
 int /*<<< orphan*/  libbpf_perf_print ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,void**,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,void*,size_t) ; 
 TYPE_1__ llvm_param ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (char const*,void**,size_t*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

struct bpf_object *FUNC12(const char *filename, bool source)
{
	struct bpf_object *obj;

	if (!libbpf_initialized) {
		FUNC5(libbpf_perf_print);
		libbpf_initialized = true;
	}

	if (source) {
		int err;
		void *obj_buf;
		size_t obj_buf_sz;

		FUNC10();
		err = FUNC9(filename, &obj_buf, &obj_buf_sz);
		FUNC8();
		if (err) {
			FUNC11("bpf: builtin compilation failed: %d, try external compiler\n", err);
			err = FUNC6(filename, &obj_buf, &obj_buf_sz);
			if (err)
				return FUNC0(-BPF_LOADER_ERRNO__COMPILE);
		} else
			FUNC11("bpf: successful builtin compilation\n");
		obj = FUNC3(obj_buf, obj_buf_sz, filename);

		if (!FUNC1(obj) && llvm_param.dump_obj)
			FUNC7(filename, obj_buf, obj_buf_sz);

		FUNC4(obj_buf);
	} else
		obj = FUNC2(filename);

	if (FUNC1(obj)) {
		FUNC11("bpf: failed to load %s\n", filename);
		return obj;
	}

	return obj;
}