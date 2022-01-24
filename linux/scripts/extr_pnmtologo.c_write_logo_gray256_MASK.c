#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  red; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 TYPE_1__** logo_data ; 
 unsigned int logo_height ; 
 unsigned int logo_width ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
    unsigned int i, j;

    /* validate image */
    for (i = 0; i < logo_height; i++)
	for (j = 0; j < logo_width; j++)
	    if (!FUNC1(logo_data[i][j]))
		FUNC0("Image must be grayscale\n");

    /* write file header */
    FUNC3();

    /* write logo data */
    for (i = 0; i < logo_height; i++)
	for (j = 0; j < logo_width; j++)
	    FUNC4(logo_data[i][j].red);

    /* write logo structure and file footer */
    FUNC2();
}