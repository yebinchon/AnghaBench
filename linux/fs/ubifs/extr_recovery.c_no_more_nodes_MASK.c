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
struct ubifs_info {int /*<<< orphan*/  max_write_size; } ;
struct ubifs_ch {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EUCLEAN ; 
 int UBIFS_CH_SZ ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 scalar_t__ FUNC2 (void*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info const*,void*,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const struct ubifs_info *c, void *buf, int len,
			int lnum, int offs)
{
	struct ubifs_ch *ch = buf;
	int skip, dlen = FUNC3(ch->len);

	/* Check for empty space after the corrupt node's common header */
	skip = FUNC0(offs + UBIFS_CH_SZ, c->max_write_size) - offs;
	if (FUNC2(buf + skip, len - skip))
		return 1;
	/*
	 * The area after the common header size is not empty, so the common
	 * header must be intact. Check it.
	 */
	if (FUNC4(c, buf, lnum, offs, 1, 0) != -EUCLEAN) {
		FUNC1("unexpected bad common header at %d:%d", lnum, offs);
		return 0;
	}
	/* Now we know the corrupt node's length we can skip over it */
	skip = FUNC0(offs + dlen, c->max_write_size) - offs;
	/* After which there should be empty space */
	if (FUNC2(buf + skip, len - skip))
		return 1;
	FUNC1("unexpected data at %d:%d", lnum, offs + skip);
	return 0;
}