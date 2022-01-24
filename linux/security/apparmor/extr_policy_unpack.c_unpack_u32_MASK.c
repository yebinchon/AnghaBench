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
typedef  int /*<<< orphan*/  u32 ;
struct aa_ext {void* pos; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  AA_U32 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct aa_ext*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct aa_ext*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static bool FUNC4(struct aa_ext *e, u32 *data, const char *name)
{
	void *pos = e->pos;

	if (FUNC3(e, AA_U32, name)) {
		if (!FUNC1(e, sizeof(u32)))
			goto fail;
		if (data)
			*data = FUNC2(FUNC0((__le32 *) e->pos));
		e->pos += sizeof(u32);
		return 1;
	}

fail:
	e->pos = pos;
	return 0;
}