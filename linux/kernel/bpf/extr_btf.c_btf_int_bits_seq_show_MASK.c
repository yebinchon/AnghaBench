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
typedef  int /*<<< orphan*/  u32 ;
struct seq_file {int dummy; } ;
struct btf_type {int dummy; } ;
struct btf {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,scalar_t__,scalar_t__,struct seq_file*) ; 
 int /*<<< orphan*/  FUNC5 (struct btf_type const*) ; 

__attribute__((used)) static void FUNC6(const struct btf *btf,
				  const struct btf_type *t,
				  void *data, u8 bits_offset,
				  struct seq_file *m)
{
	u32 int_data = FUNC5(t);
	u8 nr_bits = FUNC2(int_data);
	u8 total_bits_offset;

	/*
	 * bits_offset is at most 7.
	 * BTF_INT_OFFSET() cannot exceed 128 bits.
	 */
	total_bits_offset = bits_offset + FUNC3(int_data);
	data += FUNC1(total_bits_offset);
	bits_offset = FUNC0(total_bits_offset);
	FUNC4(data, bits_offset, nr_bits, m);
}