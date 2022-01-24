#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bpf_object {int /*<<< orphan*/ * btf; int /*<<< orphan*/ * btf_ext; } ;
struct TYPE_4__ {int /*<<< orphan*/  d_size; int /*<<< orphan*/  d_buf; } ;
typedef  TYPE_1__ Elf_Data ;

/* Variables and functions */
 int /*<<< orphan*/  BTF_ELF_SEC ; 
 int /*<<< orphan*/  BTF_EXT_ELF_SEC ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct bpf_object*) ; 
 int FUNC4 (struct bpf_object*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static int FUNC10(struct bpf_object *obj,
				Elf_Data *btf_data,
				Elf_Data *btf_ext_data)
{
	bool btf_required = FUNC3(obj);
	int err = 0;

	if (btf_data) {
		obj->btf = FUNC6(btf_data->d_buf, btf_data->d_size);
		if (FUNC0(obj->btf)) {
			FUNC9("Error loading ELF section %s: %d.\n",
				   BTF_ELF_SEC, err);
			goto out;
		}
		err = FUNC4(obj, obj->btf);
		if (err) {
			FUNC9("Error finalizing %s: %d.\n",
				   BTF_ELF_SEC, err);
			goto out;
		}
	}
	if (btf_ext_data) {
		if (!obj->btf) {
			FUNC8("Ignore ELF section %s because its depending ELF section %s is not found.\n",
				 BTF_EXT_ELF_SEC, BTF_ELF_SEC);
			goto out;
		}
		obj->btf_ext = FUNC7(btf_ext_data->d_buf,
					    btf_ext_data->d_size);
		if (FUNC0(obj->btf_ext)) {
			FUNC9("Error loading ELF section %s: %ld. Ignored and continue.\n",
				   BTF_EXT_ELF_SEC, FUNC2(obj->btf_ext));
			obj->btf_ext = NULL;
			goto out;
		}
	}
out:
	if (err || FUNC0(obj->btf)) {
		if (btf_required)
			err = err ? : FUNC2(obj->btf);
		else
			err = 0;
		if (!FUNC1(obj->btf))
			FUNC5(obj->btf);
		obj->btf = NULL;
	}
	if (btf_required && !obj->btf) {
		FUNC9("BTF is required, but is missing or corrupted.\n");
		return err == 0 ? -ENOENT : err;
	}
	return 0;
}