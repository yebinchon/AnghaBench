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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  u16 ; 
 int /*<<< orphan*/  u32 ; 
 int /*<<< orphan*/  u64 ; 
 int /*<<< orphan*/  u8 ; 

__attribute__((used)) static int FUNC1(void)
{
	FUNC0(u8, 0x0f);
	FUNC0(u8, 0xf0);
	FUNC0(u8, 0x38);

	FUNC0(u16, 0x0038);
	FUNC0(u16, 0x0380);
	FUNC0(u16, 0x3800);
	FUNC0(u16, 0x8000);

	FUNC0(u32, 0x80000000);
	FUNC0(u32, 0x7f000000);
	FUNC0(u32, 0x07e00000);
	FUNC0(u32, 0x00018000);

	FUNC0(u64, 0x8000000000000000ull);
	FUNC0(u64, 0x7f00000000000000ull);
	FUNC0(u64, 0x0001800000000000ull);
	FUNC0(u64, 0x0000000080000000ull);
	FUNC0(u64, 0x000000007f000000ull);
	FUNC0(u64, 0x0000000018000000ull);
	FUNC0(u64, 0x0000001f8000000ull);

	return 0;
}