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
 char* AGE_NAME ; 
 char* CCC_NAME ; 
 char* DATA_NAME ; 
 char* FOLD_NAME ; 
 char* NORM_NAME ; 
 char* PROP_NAME ; 
 char* TEST_NAME ; 
 char* UTF8_NAME ; 
 char* argv0 ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(void)
{
	FUNC0("Usage: %s [options]\n", argv0);
	FUNC0("\n");
	FUNC0("This program creates an a data trie used for parsing and\n");
	FUNC0("normalization of UTF-8 strings. The trie is derived from\n");
	FUNC0("a set of input files from the Unicode character database\n");
	FUNC0("found at: http://www.unicode.org/Public/UCD/latest/ucd/\n");
	FUNC0("\n");
	FUNC0("The generated tree supports two normalization forms:\n");
	FUNC0("\n");
	FUNC0("\tnfdi:\n");
	FUNC0("\t- Apply unicode normalization form NFD.\n");
	FUNC0("\t- Remove any Default_Ignorable_Code_Point.\n");
	FUNC0("\n");
	FUNC0("\tnfdicf:\n");
	FUNC0("\t- Apply unicode normalization form NFD.\n");
	FUNC0("\t- Remove any Default_Ignorable_Code_Point.\n");
	FUNC0("\t- Apply a full casefold (C + F).\n");
	FUNC0("\n");
	FUNC0("These forms were chosen as being most useful when dealing\n");
	FUNC0("with file names: NFD catches most cases where characters\n");
	FUNC0("should be considered equivalent. The ignorables are mostly\n");
	FUNC0("invisible, making names hard to type.\n");
	FUNC0("\n");
	FUNC0("The options to specify the files to be used are listed\n");
	FUNC0("below with their default values, which are the names used\n");
	FUNC0("by version 11.0.0 of the Unicode Character Database.\n");
	FUNC0("\n");
	FUNC0("The input files:\n");
	FUNC0("\t-a %s\n", AGE_NAME);
	FUNC0("\t-c %s\n", CCC_NAME);
	FUNC0("\t-p %s\n", PROP_NAME);
	FUNC0("\t-d %s\n", DATA_NAME);
	FUNC0("\t-f %s\n", FOLD_NAME);
	FUNC0("\t-n %s\n", NORM_NAME);
	FUNC0("\n");
	FUNC0("Additionally, the generated tables are tested using:\n");
	FUNC0("\t-t %s\n", TEST_NAME);
	FUNC0("\n");
	FUNC0("Finally, the output file:\n");
	FUNC0("\t-o %s\n", UTF8_NAME);
	FUNC0("\n");
}