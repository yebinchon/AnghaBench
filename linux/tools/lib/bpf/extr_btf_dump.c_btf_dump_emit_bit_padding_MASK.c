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
struct btf_dump {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btf_dump const*,char*,int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(const struct btf_dump *d,
				      int cur_off, int m_off, int m_bit_sz,
				      int align, int lvl)
{
	int off_diff = m_off - cur_off;
	int ptr_bits = sizeof(void *) * 8;

	if (off_diff <= 0)
		/* no gap */
		return;
	if (m_bit_sz == 0 && off_diff < align * 8)
		/* natural padding will take care of a gap */
		return;

	while (off_diff > 0) {
		const char *pad_type;
		int pad_bits;

		if (ptr_bits > 32 && off_diff > 32) {
			pad_type = "long";
			pad_bits = FUNC1(off_diff, ptr_bits);
		} else if (off_diff > 16) {
			pad_type = "int";
			pad_bits = FUNC1(off_diff, 32);
		} else if (off_diff > 8) {
			pad_type = "short";
			pad_bits = FUNC1(off_diff, 16);
		} else {
			pad_type = "char";
			pad_bits = FUNC1(off_diff, 8);
		}
		FUNC0(d, "\n%s%s: %d;", FUNC2(lvl), pad_type, pad_bits);
		off_diff -= pad_bits;
	}
}