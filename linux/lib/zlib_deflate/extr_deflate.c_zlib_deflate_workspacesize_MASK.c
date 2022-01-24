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
typedef  int /*<<< orphan*/  deflate_workspace ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_MEM_LEVEL ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 

int FUNC5(int windowBits, int memLevel)
{
    if (windowBits < 0) /* undocumented feature: suppress zlib header */
        windowBits = -windowBits;

    /* Since the return value is typically passed to vmalloc() unchecked... */
    FUNC0(memLevel < 1 || memLevel > MAX_MEM_LEVEL || windowBits < 9 ||
							windowBits > 15);

    return sizeof(deflate_workspace)
        + FUNC4(windowBits)
        + FUNC3(windowBits)
        + FUNC1(memLevel)
        + FUNC2(memLevel);
}