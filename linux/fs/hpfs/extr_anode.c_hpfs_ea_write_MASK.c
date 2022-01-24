#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int secno ;
struct TYPE_2__ {scalar_t__ sb_chk; } ;

/* Variables and functions */
 int FUNC0 (struct super_block*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (struct super_block*,int,int,char*) ; 
 char* FUNC3 (struct super_block*,int,struct buffer_head**,unsigned int) ; 
 TYPE_1__* FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,unsigned int) ; 

int FUNC7(struct super_block *s, secno a, int ano, unsigned pos,
	     unsigned len, const char *buf)
{
	struct buffer_head *bh;
	char *data;
	secno sec;
	unsigned l;
	while (len) {
		if (ano) {
			if ((sec = FUNC0(s, a, pos >> 9)) == -1)
				return -1;
		} else sec = a + (pos >> 9);
		if (FUNC4(s)->sb_chk) if (FUNC2(s, sec, 1, "ea #2")) return -1;
		if (!(data = FUNC3(s, sec, &bh, (len - 1) >> 9)))
			return -1;
		l = 0x200 - (pos & 0x1ff); if (l > len) l = len;
		FUNC6(data + (pos & 0x1ff), buf, l);
		FUNC5(bh);
		FUNC1(bh);
		buf += l; pos += l; len -= l;
	}
	return 0;
}