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

/* Variables and functions */
 int /*<<< orphan*/  AA_STRING ; 
 scalar_t__ FUNC0 (struct aa_ext*,int /*<<< orphan*/ ,char const*) ; 
 size_t FUNC1 (struct aa_ext*,char**) ; 

__attribute__((used)) static int FUNC2(struct aa_ext *e, const char **string, const char *name)
{
	char *src_str;
	size_t size = 0;
	void *pos = e->pos;
	*string = NULL;
	if (FUNC0(e, AA_STRING, name)) {
		size = FUNC1(e, &src_str);
		if (size) {
			/* strings are null terminated, length is size - 1 */
			if (src_str[size - 1] != 0)
				goto fail;
			*string = src_str;

			return size;
		}
	}

fail:
	e->pos = pos;
	return 0;
}