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
struct field_t {unsigned int lb; int /*<<< orphan*/  sz; int /*<<< orphan*/  name; } ;
struct bitstr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bitstr*) ; 
 int H323_ERROR_BOUND ; 
 int H323_ERROR_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct bitstr*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int TAB_SIZE ; 
 unsigned int FUNC3 (struct bitstr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct bitstr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct bitstr *bs, const struct field_t *f,
                         char *base, int level)
{
	unsigned int len;

	FUNC2("%*.s%s\n", level * TAB_SIZE, " ", f->name);

	/* 2 <= Range <= 255 */
	if (FUNC4(bs, 0, f->sz))
		return H323_ERROR_BOUND;
	len = FUNC3(bs, f->sz) + f->lb;

	FUNC0(bs);
	FUNC1(bs, (len << 2));

	if (FUNC4(bs, 0, 0))
		return H323_ERROR_BOUND;
	return H323_ERROR_NONE;
}