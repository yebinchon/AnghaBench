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
struct probe_trace_arg_ref {int offset; int user_access; struct probe_trace_arg_ref* next; } ;
struct perf_probe_arg_field {char* name; int index; struct perf_probe_arg_field* next; scalar_t__ ref; } ;
typedef  scalar_t__ Dwarf_Word ;
typedef  int /*<<< orphan*/  Dwarf_Die ;

/* Variables and functions */
 int DW_TAG_array_type ; 
 int DW_TAG_pointer_type ; 
 int DW_TAG_structure_type ; 
 int DW_TAG_union_type ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ENOTSUP ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 struct probe_trace_arg_ref* FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(Dwarf_Die *vr_die, const char *varname,
				    struct perf_probe_arg_field *field,
				    struct probe_trace_arg_ref **ref_ptr,
				    Dwarf_Die *die_mem, bool user_access)
{
	struct probe_trace_arg_ref *ref = *ref_ptr;
	Dwarf_Die type;
	Dwarf_Word offs;
	int ret, tag;

	FUNC8("converting %s in %s\n", field->name, varname);
	if (FUNC2(vr_die, &type) == NULL) {
		FUNC11("Failed to get the type of %s.\n", varname);
		return -ENOENT;
	}
	FUNC9("Var real type: %s (%x)\n", FUNC4(&type),
		  (unsigned)FUNC5(&type));
	tag = FUNC6(&type);

	if (field->name[0] == '[' &&
	    (tag == DW_TAG_array_type || tag == DW_TAG_pointer_type)) {
		/* Save original type for next field or type */
		FUNC7(die_mem, &type, sizeof(*die_mem));
		/* Get the type of this array */
		if (FUNC2(&type, &type) == NULL) {
			FUNC11("Failed to get the type of %s.\n", varname);
			return -ENOENT;
		}
		FUNC9("Array real type: %s (%x)\n", FUNC4(&type),
			 (unsigned)FUNC5(&type));
		if (tag == DW_TAG_pointer_type) {
			ref = FUNC12(sizeof(struct probe_trace_arg_ref));
			if (ref == NULL)
				return -ENOMEM;
			if (*ref_ptr)
				(*ref_ptr)->next = ref;
			else
				*ref_ptr = ref;
		}
		ref->offset += FUNC3(&type) * field->index;
		ref->user_access = user_access;
		goto next;
	} else if (tag == DW_TAG_pointer_type) {
		/* Check the pointer and dereference */
		if (!field->ref) {
			FUNC10("Semantic error: %s must be referred by '->'\n",
			       field->name);
			return -EINVAL;
		}
		/* Get the type pointed by this pointer */
		if (FUNC2(&type, &type) == NULL) {
			FUNC11("Failed to get the type of %s.\n", varname);
			return -ENOENT;
		}
		/* Verify it is a data structure  */
		tag = FUNC6(&type);
		if (tag != DW_TAG_structure_type && tag != DW_TAG_union_type) {
			FUNC11("%s is not a data structure nor a union.\n",
				   varname);
			return -EINVAL;
		}

		ref = FUNC12(sizeof(struct probe_trace_arg_ref));
		if (ref == NULL)
			return -ENOMEM;
		if (*ref_ptr)
			(*ref_ptr)->next = ref;
		else
			*ref_ptr = ref;
	} else {
		/* Verify it is a data structure  */
		if (tag != DW_TAG_structure_type && tag != DW_TAG_union_type) {
			FUNC11("%s is not a data structure nor a union.\n",
				   varname);
			return -EINVAL;
		}
		if (field->name[0] == '[') {
			FUNC10("Semantic error: %s is not a pointer"
			       " nor array.\n", varname);
			return -EINVAL;
		}
		/* While prcessing unnamed field, we don't care about this */
		if (field->ref && FUNC4(vr_die)) {
			FUNC10("Semantic error: %s must be referred by '.'\n",
			       field->name);
			return -EINVAL;
		}
		if (!ref) {
			FUNC11("Structure on a register is not "
				   "supported yet.\n");
			return -ENOTSUP;
		}
	}

	if (FUNC0(&type, field->name, die_mem) == NULL) {
		FUNC11("%s(type:%s) has no member %s.\n", varname,
			   FUNC4(&type), field->name);
		return -EINVAL;
	}

	/* Get the offset of the field */
	if (tag == DW_TAG_union_type) {
		offs = 0;
	} else {
		ret = FUNC1(die_mem, &offs);
		if (ret < 0) {
			FUNC11("Failed to get the offset of %s.\n",
				   field->name);
			return ret;
		}
	}
	ref->offset += (long)offs;
	ref->user_access = user_access;

	/* If this member is unnamed, we need to reuse this field */
	if (!FUNC4(die_mem))
		return FUNC13(die_mem, varname, field,
						&ref, die_mem, user_access);

next:
	/* Converting next field */
	if (field->next)
		return FUNC13(die_mem, field->name,
				field->next, &ref, die_mem, user_access);
	else
		return 0;
}