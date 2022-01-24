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
struct TYPE_2__ {int fd; size_t obj_buf_sz; int maps_shndx; int btf_maps_shndx; int data_shndx; int rodata_shndx; int bss_shndx; void* obj_buf; } ;
struct bpf_object {int loaded; int /*<<< orphan*/  list; TYPE_1__ efile; int /*<<< orphan*/  name; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct bpf_object* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  bpf_objects_list ; 
 struct bpf_object* FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct bpf_object *FUNC10(const char *path,
					  void *obj_buf,
					  size_t obj_buf_sz)
{
	struct bpf_object *obj;
	char *end;

	obj = FUNC3(1, sizeof(struct bpf_object) + FUNC8(path) + 1);
	if (!obj) {
		FUNC5("alloc memory failed for %s\n", path);
		return FUNC0(-ENOMEM);
	}

	FUNC7(obj->path, path);
	/* Using basename() GNU version which doesn't modify arg. */
	FUNC9(obj->name, FUNC2((void *)path), sizeof(obj->name) - 1);
	end = FUNC6(obj->name, '.');
	if (end)
		*end = 0;

	obj->efile.fd = -1;
	/*
	 * Caller of this function should also call
	 * bpf_object__elf_finish() after data collection to return
	 * obj_buf to user. If not, we should duplicate the buffer to
	 * avoid user freeing them before elf finish.
	 */
	obj->efile.obj_buf = obj_buf;
	obj->efile.obj_buf_sz = obj_buf_sz;
	obj->efile.maps_shndx = -1;
	obj->efile.btf_maps_shndx = -1;
	obj->efile.data_shndx = -1;
	obj->efile.rodata_shndx = -1;
	obj->efile.bss_shndx = -1;

	obj->loaded = false;

	FUNC1(&obj->list);
	FUNC4(&obj->list, &bpf_objects_list);
	return obj;
}