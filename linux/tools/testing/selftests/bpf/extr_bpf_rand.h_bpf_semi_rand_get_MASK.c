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
typedef  int uint64_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 () ; 

__attribute__((used)) static inline uint64_t FUNC9(void)
{
	switch (FUNC8() % 39) {
	case  0: return 0x000000ff00000000ULL | FUNC7(0);
	case  1: return 0xffffffff00000000ULL | FUNC0(0);
	case  2: return 0x00000000ffff0000ULL | FUNC0(0);
	case  3: return 0x8000000000000000ULL | FUNC2(0);
	case  4: return 0x00000000f0000000ULL | FUNC2(0);
	case  5: return 0x0000000100000000ULL | FUNC1(0);
	case  6: return 0x800ff00000000000ULL | FUNC2(0);
	case  7: return 0x7fffffff00000000ULL | FUNC2(0);
	case  8: return 0xffffffffffffff00ULL ^ FUNC2(24);
	case  9: return 0xffffffffffffff00ULL | FUNC7(0);
	case 10: return 0x0000000010000000ULL | FUNC2(0);
	case 11: return 0xf000000000000000ULL | FUNC7(0);
	case 12: return 0x0000f00000000000ULL | FUNC7(8);
	case 13: return 0x000000000f000000ULL | FUNC7(16);
	case 14: return 0x0000000000000f00ULL | FUNC7(32);
	case 15: return 0x00fff00000000f00ULL | FUNC7(48);
	case 16: return 0x00007fffffffffffULL ^ FUNC2(1);
	case 17: return 0xffff800000000000ULL | FUNC7(4);
	case 18: return 0xffff800000000000ULL | FUNC7(20);
	case 19: return (0xffffffc000000000ULL + 0x80000ULL) | FUNC2(0);
	case 20: return (0xffffffc000000000ULL - 0x04000000ULL) | FUNC2(0);
	case 21: return 0x0000000000000000ULL | FUNC7(55) | FUNC2(20);
	case 22: return 0xffffffffffffffffULL ^ FUNC7(3) ^ FUNC2(40);
	case 23: return 0x0000000000000000ULL | FUNC7(FUNC7(0) % 64);
	case 24: return 0x0000000000000000ULL | FUNC0(FUNC7(0) % 64);
	case 25: return 0xffffffffffffffffULL ^ FUNC7(FUNC7(0) % 64);
	case 26: return 0xffffffffffffffffULL ^ FUNC3(FUNC7(0) % 64);
	case 27: return 0x0000800000000000ULL;
	case 28: return 0x8000000000000000ULL;
	case 29: return 0x0000000000000000ULL;
	case 30: return 0xffffffffffffffffULL;
	case 31: return FUNC0(FUNC7(0) % 64);
	case 32: return FUNC1(FUNC7(0) % 64);
	case 33: return FUNC2(FUNC7(0) % 64);
	case 34: return FUNC3(FUNC7(0) % 64);
	case 35: return FUNC4(FUNC7(0) % 64);
	case 36: return FUNC5(FUNC7(0) % 64);
	case 37: return FUNC6(FUNC7(0) % 64);
	default: return FUNC6(0);
	}
}