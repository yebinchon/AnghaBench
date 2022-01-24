#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct variable_list {int /*<<< orphan*/  vars; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;
struct TYPE_3__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  sp_die; int /*<<< orphan*/  machine; int /*<<< orphan*/  fb_ops; } ;
struct available_var_finder {int nvls; TYPE_1__ pf; scalar_t__ child; struct variable_list* vls; } ;
struct TYPE_4__ {scalar_t__ show_location_range; } ;
typedef  int /*<<< orphan*/  Dwarf_Die ;

/* Variables and functions */
 int DIE_FIND_CB_CONTINUE ; 
 int DIE_FIND_CB_END ; 
 int DIE_FIND_CB_SIBLING ; 
 int DW_TAG_formal_parameter ; 
 int DW_TAG_variable ; 
 int ERANGE ; 
 struct strbuf STRBUF_INIT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct strbuf*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct strbuf*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 TYPE_2__ probe_conf ; 
 int FUNC6 (struct strbuf*,char*,int) ; 
 scalar_t__ FUNC7 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(Dwarf_Die *die_mem, void *data)
{
	struct available_var_finder *af = data;
	struct variable_list *vl;
	struct strbuf buf = STRBUF_INIT;
	int tag, ret;

	vl = &af->vls[af->nvls - 1];

	tag = FUNC4(die_mem);
	if (tag == DW_TAG_formal_parameter ||
	    tag == DW_TAG_variable) {
		ret = FUNC0(die_mem, af->pf.addr,
						af->pf.fb_ops, &af->pf.sp_die,
						af->pf.machine, NULL);
		if (ret == 0 || ret == -ERANGE) {
			int ret2;
			bool externs = !af->child;

			if (FUNC9(&buf, 64) < 0)
				goto error;

			if (probe_conf.show_location_range) {
				if (!externs)
					ret2 = FUNC6(&buf,
						ret ? "[INV]\t" : "[VAL]\t", 6);
				else
					ret2 = FUNC6(&buf, "[EXT]\t", 6);
				if (ret2)
					goto error;
			}

			ret2 = FUNC2(die_mem, &buf);

			if (!ret2 && probe_conf.show_location_range &&
				!externs) {
				if (FUNC7(&buf, '\t') < 0)
					goto error;
				ret2 = FUNC1(&af->pf.sp_die,
							die_mem, &buf);
			}

			FUNC5("Add new var: %s\n", buf.buf);
			if (ret2 == 0) {
				FUNC11(vl->vars,
					FUNC8(&buf, NULL));
			}
			FUNC10(&buf);
		}
	}

	if (af->child && FUNC3(die_mem, af->pf.addr))
		return DIE_FIND_CB_CONTINUE;
	else
		return DIE_FIND_CB_SIBLING;
error:
	FUNC10(&buf);
	FUNC5("Error in strbuf\n");
	return DIE_FIND_CB_END;
}