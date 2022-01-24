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
struct aa_ext {void* pos; } ;
typedef  enum aa_code { ____Placeholder_aa_code } aa_code ;

/* Variables and functions */
 int AA_NAME ; 
 scalar_t__ FUNC0 (char const*,char*) ; 
 scalar_t__ FUNC1 (struct aa_ext*,int) ; 
 size_t FUNC2 (struct aa_ext*,char**) ; 

__attribute__((used)) static bool FUNC3(struct aa_ext *e, enum aa_code code, const char *name)
{
	/*
	 * May need to reset pos if name or type doesn't match
	 */
	void *pos = e->pos;
	/*
	 * Check for presence of a tagname, and if present name size
	 * AA_NAME tag value is a u16.
	 */
	if (FUNC1(e, AA_NAME)) {
		char *tag = NULL;
		size_t size = FUNC2(e, &tag);
		/* if a name is specified it must match. otherwise skip tag */
		if (name && (!size || tag[size-1] != '\0' || FUNC0(name, tag)))
			goto fail;
	} else if (name) {
		/* if a name is specified and there is no name tag fail */
		goto fail;
	}

	/* now check if type code matches */
	if (FUNC1(e, code))
		return 1;

fail:
	e->pos = pos;
	return 0;
}