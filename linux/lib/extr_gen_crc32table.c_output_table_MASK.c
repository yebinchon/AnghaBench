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
typedef  int uint32_t ;

/* Variables and functions */
 int ENTRIES_PER_LINE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(uint32_t (*table)[256], int rows, int len, char *trans)
{
	int i, j;

	for (j = 0 ; j < rows; j++) {
		FUNC0("{");
		for (i = 0; i < len - 1; i++) {
			if (i % ENTRIES_PER_LINE == 0)
				FUNC0("\n");
			FUNC0("%s(0x%8.8xL), ", trans, table[j][i]);
		}
		FUNC0("%s(0x%8.8xL)},\n", trans, table[j][len - 1]);
	}
}