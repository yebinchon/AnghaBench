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
struct qstr {unsigned int len; } ;
struct gfs2_dirent {int /*<<< orphan*/  de_rec_len; int /*<<< orphan*/  de_name_len; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct gfs2_dirent const*) ; 

__attribute__((used)) static int FUNC3(const struct gfs2_dirent *dent,
				  const struct qstr *name,
				  void *ptr)
{
	unsigned required = FUNC0(name->len);
	unsigned actual = FUNC0(FUNC1(dent->de_name_len));
	unsigned totlen = FUNC1(dent->de_rec_len);

	if (ptr < (void *)dent || ptr >= (void *)dent + totlen)
		return 0;
	if (FUNC2(dent))
		actual = 0;
	if (ptr < (void *)dent + actual)
		return -1;
	if ((void *)dent + totlen >= ptr + required)
		return 1;
	return -1;
}