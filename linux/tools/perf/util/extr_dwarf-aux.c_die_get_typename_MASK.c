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
struct strbuf {int dummy; } ;
typedef  int /*<<< orphan*/  Dwarf_Die ;

/* Variables and functions */
 int DW_TAG_array_type ; 
 int DW_TAG_enumeration_type ; 
 int DW_TAG_pointer_type ; 
 int DW_TAG_structure_type ; 
 int DW_TAG_subroutine_type ; 
 int DW_TAG_union_type ; 
 int ENOENT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct strbuf*,char*,int) ; 
 int FUNC4 (struct strbuf*,char*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct strbuf*,char const*) ; 

int FUNC6(Dwarf_Die *vr_die, struct strbuf *buf)
{
	Dwarf_Die type;
	int tag, ret;
	const char *tmp = "";

	if (FUNC0(vr_die, &type) == NULL)
		return -ENOENT;

	tag = FUNC2(&type);
	if (tag == DW_TAG_array_type || tag == DW_TAG_pointer_type)
		tmp = "*";
	else if (tag == DW_TAG_subroutine_type) {
		/* Function pointer */
		return FUNC3(buf, "(function_type)", 15);
	} else {
		if (!FUNC1(&type))
			return -ENOENT;
		if (tag == DW_TAG_union_type)
			tmp = "union ";
		else if (tag == DW_TAG_structure_type)
			tmp = "struct ";
		else if (tag == DW_TAG_enumeration_type)
			tmp = "enum ";
		/* Write a base name */
		return FUNC4(buf, "%s%s", tmp, FUNC1(&type));
	}
	ret = FUNC6(&type, buf);
	return ret ? ret : FUNC5(buf, tmp);
}