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
typedef  int wchar_t ;
typedef  int u16 ;
struct super_block {int dummy; } ;
struct hfsplus_unistr {void* length; void** unicode; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  HFSPLUS_SB_NODECOMPOSE ; 
 int FUNC1 (struct super_block*,char const*,int,int*) ; 
 void* FUNC2 (int) ; 
 int* FUNC3 (int,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(struct super_block *sb,
		    struct hfsplus_unistr *ustr, int max_unistr_len,
		    const char *astr, int len)
{
	int size, dsize, decompose;
	u16 *dstr, outlen = 0;
	wchar_t c;
	u16 dhangul[3];

	decompose = !FUNC4(HFSPLUS_SB_NODECOMPOSE, &FUNC0(sb)->flags);
	while (outlen < max_unistr_len && len > 0) {
		size = FUNC1(sb, astr, len, &c);

		if (decompose)
			dstr = FUNC3(c, &dsize, dhangul);
		else
			dstr = NULL;
		if (dstr) {
			if (outlen + dsize > max_unistr_len)
				break;
			do {
				ustr->unicode[outlen++] = FUNC2(*dstr++);
			} while (--dsize > 0);
		} else
			ustr->unicode[outlen++] = FUNC2(c);

		astr += size;
		len -= size;
	}
	ustr->length = FUNC2(outlen);
	if (len > 0)
		return -ENAMETOOLONG;
	return 0;
}