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
typedef  size_t u32 ;
struct aa_ext {char* pos; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  AA_BLOB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct aa_ext*,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct aa_ext*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static size_t FUNC4(struct aa_ext *e, char **blob, const char *name)
{
	void *pos = e->pos;

	if (FUNC3(e, AA_BLOB, name)) {
		u32 size;
		if (!FUNC1(e, sizeof(u32)))
			goto fail;
		size = FUNC2(FUNC0((__le32 *) e->pos));
		e->pos += sizeof(u32);
		if (FUNC1(e, (size_t) size)) {
			*blob = e->pos;
			e->pos += size;
			return size;
		}
	}

fail:
	e->pos = pos;
	return 0;
}