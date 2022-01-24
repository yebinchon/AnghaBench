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
typedef  int /*<<< orphan*/  u16 ;
struct aa_ext {void* pos; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  AA_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct aa_ext*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct aa_ext*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static size_t FUNC4(struct aa_ext *e, const char *name)
{
	void *pos = e->pos;

	if (FUNC3(e, AA_ARRAY, name)) {
		int size;
		if (!FUNC1(e, sizeof(u16)))
			goto fail;
		size = (int)FUNC2(FUNC0((__le16 *) e->pos));
		e->pos += sizeof(u16);
		return size;
	}

fail:
	e->pos = pos;
	return 0;
}