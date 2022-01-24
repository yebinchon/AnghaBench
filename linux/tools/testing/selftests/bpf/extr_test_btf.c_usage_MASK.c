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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dedup_tests ; 
 int /*<<< orphan*/  file_tests ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  get_info_tests ; 
 int /*<<< orphan*/  info_raw_tests ; 
 int /*<<< orphan*/  raw_tests ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC2(const char *cmd)
{
	FUNC1(stderr, "Usage: %s [-l] [[-r btf_raw_test_num (1 - %d)] |\n"
			"\t[-g btf_get_info_test_num (1 - %d)] |\n"
			"\t[-f btf_file_test_num (1 - %d)] |\n"
			"\t[-k btf_prog_info_raw_test_num (1 - %d)] |\n"
			"\t[-p (pretty print test)] |\n"
			"\t[-d btf_dedup_test_num (1 - %d)]]\n",
		cmd, FUNC0(raw_tests), FUNC0(get_info_tests),
		FUNC0(file_tests), FUNC0(info_raw_tests),
		FUNC0(dedup_tests));
}