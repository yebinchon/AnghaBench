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
struct field_t {int sz; int attr; unsigned int lb; int /*<<< orphan*/  offset; int /*<<< orphan*/  name; } ;
struct bitstr {int cur; } ;

/* Variables and functions */
#define  BYTE 131 
 int /*<<< orphan*/  FUNC0 (struct bitstr*) ; 
#define  CONS 130 
 int DECODE ; 
 int H323_ERROR_BOUND ; 
 int H323_ERROR_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct bitstr*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int TAB_SIZE ; 
#define  UNCO 129 
#define  WORD 128 
 int /*<<< orphan*/  FUNC3 (struct bitstr*,int) ; 
 unsigned int FUNC4 (struct bitstr*) ; 
 unsigned int FUNC5 (struct bitstr*,unsigned int) ; 
 scalar_t__ FUNC6 (struct bitstr*,int,int) ; 

__attribute__((used)) static int FUNC7(struct bitstr *bs, const struct field_t *f,
                      char *base, int level)
{
	unsigned int len;

	FUNC2("%*.s%s", level * TAB_SIZE, " ", f->name);

	switch (f->sz) {
	case BYTE:		/* Range == 256 */
		FUNC0(bs);
		bs->cur++;
		break;
	case WORD:		/* 257 <= Range <= 64K */
		FUNC0(bs);
		bs->cur += 2;
		break;
	case CONS:		/* 64K < Range < 4G */
		if (FUNC6(bs, 0, 2))
			return H323_ERROR_BOUND;
		len = FUNC3(bs, 2) + 1;
		FUNC0(bs);
		if (base && (f->attr & DECODE)) {	/* timeToLive */
			unsigned int v = FUNC5(bs, len) + f->lb;
			FUNC2(" = %u", v);
			*((unsigned int *)(base + f->offset)) = v;
		}
		bs->cur += len;
		break;
	case UNCO:
		FUNC0(bs);
		if (FUNC6(bs, 2, 0))
			return H323_ERROR_BOUND;
		len = FUNC4(bs);
		bs->cur += len;
		break;
	default:		/* 2 <= Range <= 255 */
		FUNC1(bs, f->sz);
		break;
	}

	FUNC2("\n");

	if (FUNC6(bs, 0, 0))
		return H323_ERROR_BOUND;
	return H323_ERROR_NONE;
}