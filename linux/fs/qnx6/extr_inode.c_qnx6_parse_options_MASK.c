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
typedef  int /*<<< orphan*/  substring_t ;
struct super_block {int dummy; } ;
struct qnx6_sb_info {int /*<<< orphan*/  s_mount_opt; } ;

/* Variables and functions */
 int MAX_OPT_ARGS ; 
 int /*<<< orphan*/  MMI_FS ; 
#define  Opt_mmifs 128 
 struct qnx6_sb_info* FUNC0 (struct super_block*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char**,char*) ; 
 int /*<<< orphan*/  tokens ; 

__attribute__((used)) static int FUNC4(char *options, struct super_block *sb)
{
	char *p;
	struct qnx6_sb_info *sbi = FUNC0(sb);
	substring_t args[MAX_OPT_ARGS];

	if (!options)
		return 1;

	while ((p = FUNC3(&options, ",")) != NULL) {
		int token;
		if (!*p)
			continue;

		token = FUNC1(p, tokens, args);
		switch (token) {
		case Opt_mmifs:
			FUNC2(sbi->s_mount_opt, MMI_FS);
			break;
		default:
			return 0;
		}
	}
	return 1;
}