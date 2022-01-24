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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct bpf_object* FUNC1 (int) ; 
 int /*<<< orphan*/  EV_CURRENT ; 
 scalar_t__ EV_NONE ; 
 scalar_t__ FUNC2 (struct bpf_object*) ; 
 int LIBBPF_ERRNO__LIBELF ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct bpf_object*) ; 
 int /*<<< orphan*/  FUNC5 (struct bpf_object*) ; 
 int /*<<< orphan*/  FUNC6 (struct bpf_object*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bpf_object*) ; 
 int /*<<< orphan*/  FUNC8 (struct bpf_object*) ; 
 struct bpf_object* FUNC9 (char const*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct bpf_object*) ; 
 int /*<<< orphan*/  FUNC11 (struct bpf_object*,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  out ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*) ; 

__attribute__((used)) static struct bpf_object *
FUNC14(const char *path, void *obj_buf, size_t obj_buf_sz,
		   bool needs_kver, int flags)
{
	struct bpf_object *obj;
	int err;

	if (FUNC12(EV_CURRENT) == EV_NONE) {
		FUNC13("failed to init libelf for %s\n", path);
		return FUNC1(-LIBBPF_ERRNO__LIBELF);
	}

	obj = FUNC9(path, obj_buf, obj_buf_sz);
	if (FUNC2(obj))
		return obj;

	FUNC0(FUNC8(obj), err, out);
	FUNC0(FUNC3(obj), err, out);
	FUNC0(FUNC10(obj), err, out);
	FUNC0(FUNC6(obj, flags), err, out);
	FUNC0(FUNC5(obj), err, out);
	FUNC0(FUNC11(obj, needs_kver), err, out);

	FUNC7(obj);
	return obj;
out:
	FUNC4(obj);
	return FUNC1(err);
}