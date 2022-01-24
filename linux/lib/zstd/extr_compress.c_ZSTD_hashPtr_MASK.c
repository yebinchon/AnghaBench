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
typedef  int U32 ;

/* Variables and functions */
 size_t FUNC0 (void const*,int) ; 
 size_t FUNC1 (void const*,int) ; 
 size_t FUNC2 (void const*,int) ; 
 size_t FUNC3 (void const*,int) ; 
 size_t FUNC4 (void const*,int) ; 

__attribute__((used)) static size_t FUNC5(const void *p, U32 hBits, U32 mls)
{
	switch (mls) {
	// case 3: return ZSTD_hash3Ptr(p, hBits);
	default:
	case 4: return FUNC0(p, hBits);
	case 5: return FUNC1(p, hBits);
	case 6: return FUNC2(p, hBits);
	case 7: return FUNC3(p, hBits);
	case 8: return FUNC4(p, hBits);
	}
}