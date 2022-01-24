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
 int BE_TABLE_ROWS ; 
 int BE_TABLE_SIZE ; 
 int CRC_BE_BITS ; 
 int CRC_LE_BITS ; 
 int LE_TABLE_ROWS ; 
 int LE_TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  crc32ctable_le ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  crc32table_be ; 
 int /*<<< orphan*/  crc32table_le ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

int FUNC5(int argc, char** argv)
{
	FUNC4("/* this file is generated - do not edit */\n\n");

	if (CRC_LE_BITS > 1) {
		FUNC2();
		FUNC4("static const u32 ____cacheline_aligned "
		       "crc32table_le[%d][%d] = {",
		       LE_TABLE_ROWS, LE_TABLE_SIZE);
		FUNC3(crc32table_le, LE_TABLE_ROWS,
			     LE_TABLE_SIZE, "tole");
		FUNC4("};\n");
	}

	if (CRC_BE_BITS > 1) {
		FUNC1();
		FUNC4("static const u32 ____cacheline_aligned "
		       "crc32table_be[%d][%d] = {",
		       BE_TABLE_ROWS, BE_TABLE_SIZE);
		FUNC3(crc32table_be, LE_TABLE_ROWS,
			     BE_TABLE_SIZE, "tobe");
		FUNC4("};\n");
	}
	if (CRC_LE_BITS > 1) {
		FUNC0();
		FUNC4("static const u32 ____cacheline_aligned "
		       "crc32ctable_le[%d][%d] = {",
		       LE_TABLE_ROWS, LE_TABLE_SIZE);
		FUNC3(crc32ctable_le, LE_TABLE_ROWS,
			     LE_TABLE_SIZE, "tole");
		FUNC4("};\n");
	}

	return 0;
}