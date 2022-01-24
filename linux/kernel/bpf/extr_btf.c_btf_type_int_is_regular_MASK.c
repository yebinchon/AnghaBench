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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct btf_type {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btf_type const*) ; 

__attribute__((used)) static bool FUNC5(const struct btf_type *t)
{
	u8 nr_bits, nr_bytes;
	u32 int_data;

	int_data = FUNC4(t);
	nr_bits = FUNC2(int_data);
	nr_bytes = FUNC1(nr_bits);
	if (FUNC0(nr_bits) ||
	    FUNC3(int_data) ||
	    (nr_bytes != sizeof(u8) && nr_bytes != sizeof(u16) &&
	     nr_bytes != sizeof(u32) && nr_bytes != sizeof(u64) &&
	     nr_bytes != (2 * sizeof(u64)))) {
		return false;
	}

	return true;
}