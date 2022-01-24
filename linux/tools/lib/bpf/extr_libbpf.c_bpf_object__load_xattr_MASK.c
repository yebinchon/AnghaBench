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
struct bpf_object_load_attr {int /*<<< orphan*/  log_level; int /*<<< orphan*/  target_btf_path; struct bpf_object* obj; } ;
struct bpf_object {int loaded; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bpf_object*) ; 
 int /*<<< orphan*/  out ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

int FUNC6(struct bpf_object_load_attr *attr)
{
	struct bpf_object *obj;
	int err;

	if (!attr)
		return -EINVAL;
	obj = attr->obj;
	if (!obj)
		return -EINVAL;

	if (obj->loaded) {
		FUNC5("object should not be loaded twice\n");
		return -EINVAL;
	}

	obj->loaded = true;

	FUNC0(FUNC1(obj), err, out);
	FUNC0(FUNC3(obj, attr->target_btf_path), err, out);
	FUNC0(FUNC2(obj, attr->log_level), err, out);

	return 0;
out:
	FUNC4(obj);
	FUNC5("failed to load object '%s'\n", obj->path);
	return err;
}