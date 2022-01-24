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
typedef  int uint32_t ;
struct fdt_property {int dummy; } ;
typedef  int /*<<< orphan*/  fdt32_t ;

/* Variables and functions */
#define  FDT_BEGIN_NODE 132 
#define  FDT_END 131 
#define  FDT_END_NODE 130 
 int FDT_ERR_BADSTRUCTURE ; 
 int FDT_ERR_TRUNCATED ; 
#define  FDT_NOP 129 
#define  FDT_PROP 128 
 int FUNC0 (int) ; 
 int FDT_TAGSIZE ; 
 int FUNC1 (int /*<<< orphan*/  const) ; 
 void* FUNC2 (void const*,int,int) ; 
 int FUNC3 (void const*) ; 

uint32_t FUNC4(const void *fdt, int startoffset, int *nextoffset)
{
	const fdt32_t *tagp, *lenp;
	uint32_t tag;
	int offset = startoffset;
	const char *p;

	*nextoffset = -FDT_ERR_TRUNCATED;
	tagp = FUNC2(fdt, offset, FDT_TAGSIZE);
	if (!tagp)
		return FDT_END; /* premature end */
	tag = FUNC1(*tagp);
	offset += FDT_TAGSIZE;

	*nextoffset = -FDT_ERR_BADSTRUCTURE;
	switch (tag) {
	case FDT_BEGIN_NODE:
		/* skip name */
		do {
			p = FUNC2(fdt, offset++, 1);
		} while (p && (*p != '\0'));
		if (!p)
			return FDT_END; /* premature end */
		break;

	case FDT_PROP:
		lenp = FUNC2(fdt, offset, sizeof(*lenp));
		if (!lenp)
			return FDT_END; /* premature end */
		/* skip-name offset, length and value */
		offset += sizeof(struct fdt_property) - FDT_TAGSIZE
			+ FUNC1(*lenp);
		if (FUNC3(fdt) < 0x10 && FUNC1(*lenp) >= 8 &&
		    ((offset - FUNC1(*lenp)) % 8) != 0)
			offset += 4;
		break;

	case FDT_END:
	case FDT_END_NODE:
	case FDT_NOP:
		break;

	default:
		return FDT_END;
	}

	if (!FUNC2(fdt, startoffset, offset - startoffset))
		return FDT_END; /* premature end */

	*nextoffset = FUNC0(offset);
	return tag;
}