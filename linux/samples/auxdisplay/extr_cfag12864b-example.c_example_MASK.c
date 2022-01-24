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
 int CFAG12864B_HEIGHT ; 
 int CFAG12864B_WIDTH ; 
 unsigned char EXAMPLES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC5 (unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(unsigned char n)
{
	unsigned short i, j;
	unsigned char matrix[CFAG12864B_WIDTH * CFAG12864B_HEIGHT];

	if (n > EXAMPLES)
		return;

	FUNC7("Example %i/%i - ", n, EXAMPLES);

	switch (n) {
	case 1:
		FUNC7("Draw points setting bits");
		FUNC0();
		for (i = 0; i < CFAG12864B_WIDTH; i += 2)
			for (j = 0; j < CFAG12864B_HEIGHT; j += 2)
				FUNC4(i, j);
		break;

	case 2:
		FUNC7("Clear the LCD");
		FUNC0();
		break;

	case 3:
		FUNC7("Draw rows formatting a [128*64] matrix");
		FUNC6(matrix, 0, CFAG12864B_WIDTH * CFAG12864B_HEIGHT);
		for (i = 0; i < CFAG12864B_WIDTH; i++)
			for (j = 0; j < CFAG12864B_HEIGHT; j += 2)
				matrix[j * CFAG12864B_WIDTH + i] = 1;
		FUNC2(matrix);
		break;

	case 4:
		FUNC7("Fill the lcd");
		FUNC1();
		break;

	case 5:
		FUNC7("Draw columns unsetting bits");
		for (i = 0; i < CFAG12864B_WIDTH; i += 2)
			for (j = 0; j < CFAG12864B_HEIGHT; j++)
				FUNC5(i, j);
		break;

	case 6:
		FUNC7("Do negative not-ing all bits");
		for (i = 0; i < CFAG12864B_WIDTH; i++)
			for (j = 0; j < CFAG12864B_HEIGHT; j ++)
				FUNC3(i, j);
		break;
	}

	FUNC8(" - [Press Enter]");
}