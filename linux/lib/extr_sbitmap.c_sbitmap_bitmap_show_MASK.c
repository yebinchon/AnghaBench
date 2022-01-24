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
typedef  unsigned long u8 ;
struct seq_file {int dummy; } ;
struct sbitmap {int map_nr; TYPE_1__* map; } ;
struct TYPE_2__ {int /*<<< orphan*/  depth; int /*<<< orphan*/  word; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,unsigned int,unsigned long) ; 
 unsigned int FUNC3 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char) ; 

void FUNC5(struct sbitmap *sb, struct seq_file *m)
{
	u8 byte = 0;
	unsigned int byte_bits = 0;
	unsigned int offset = 0;
	int i;

	for (i = 0; i < sb->map_nr; i++) {
		unsigned long word = FUNC1(sb->map[i].word);
		unsigned int word_bits = FUNC1(sb->map[i].depth);

		while (word_bits > 0) {
			unsigned int bits = FUNC3(8 - byte_bits, word_bits);

			byte |= (word & (FUNC0(bits) - 1)) << byte_bits;
			byte_bits += bits;
			if (byte_bits == 8) {
				FUNC2(m, offset, byte);
				byte = 0;
				byte_bits = 0;
				offset++;
			}
			word >>= bits;
			word_bits -= bits;
		}
	}
	if (byte_bits) {
		FUNC2(m, offset, byte);
		offset++;
	}
	if (offset)
		FUNC4(m, '\n');
}