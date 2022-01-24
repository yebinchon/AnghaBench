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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u16 ;
struct seq_file {int dummy; } ;

/* Variables and functions */
 scalar_t__ BITS_PER_U128 ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(void *data, u8 bits_offset,
				  u8 nr_bits, struct seq_file *m)
{
	u16 left_shift_bits, right_shift_bits;
	u8 nr_copy_bytes;
	u8 nr_copy_bits;
	u64 print_num[2] = {};

	nr_copy_bits = nr_bits + bits_offset;
	nr_copy_bytes = FUNC0(nr_copy_bits);

	FUNC3(print_num, data, nr_copy_bytes);

#ifdef __BIG_ENDIAN_BITFIELD
	left_shift_bits = bits_offset;
#else
	left_shift_bits = BITS_PER_U128 - nr_copy_bits;
#endif
	right_shift_bits = BITS_PER_U128 - nr_bits;

	FUNC2(print_num, left_shift_bits, right_shift_bits);
	FUNC1(m, print_num);
}