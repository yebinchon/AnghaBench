#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ red; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__) ; 
 TYPE_1__** logo_data ; 
 unsigned int logo_height ; 
 unsigned int logo_width ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned char) ; 

__attribute__((used)) static void FUNC6(void)
{
    unsigned int i, j;
    unsigned char val, bit;

    /* validate image */
    for (i = 0; i < logo_height; i++)
	for (j = 0; j < logo_width; j++)
	    if (!FUNC1(logo_data[i][j]) && !FUNC2(logo_data[i][j]))
		FUNC0("Image must be monochrome\n");

    /* write file header */
    FUNC4();

    /* write logo data */
    for (i = 0; i < logo_height; i++) {
	for (j = 0; j < logo_width;) {
	    for (val = 0, bit = 0x80; bit && j < logo_width; j++, bit >>= 1)
		if (logo_data[i][j].red)
		    val |= bit;
	    FUNC5(val);
	}
    }

    /* write logo structure and file footer */
    FUNC3();
}