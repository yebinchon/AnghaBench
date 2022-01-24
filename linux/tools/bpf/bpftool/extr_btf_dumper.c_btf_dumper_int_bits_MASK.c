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
typedef  int /*<<< orphan*/  json_writer_t ;
typedef  int __u8 ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int,void const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(__u32 int_type, __u8 bit_offset,
				const void *data, json_writer_t *jw,
				bool is_plain_text)
{
	int nr_bits = FUNC2(int_type);
	int total_bits_offset;

	/* bits_offset is at most 7.
	 * BTF_INT_OFFSET() cannot exceed 128 bits.
	 */
	total_bits_offset = bit_offset + FUNC3(int_type);
	data += FUNC1(total_bits_offset);
	bit_offset = FUNC0(total_bits_offset);
	FUNC4(nr_bits, bit_offset, data, jw,
			    is_plain_text);
}