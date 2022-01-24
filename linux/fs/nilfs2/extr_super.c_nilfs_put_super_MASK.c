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
struct the_nilfs {int /*<<< orphan*/  ns_dat; int /*<<< orphan*/  ns_cpfile; int /*<<< orphan*/  ns_sufile; int /*<<< orphan*/  ns_sem; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct super_block *sb)
{
	struct the_nilfs *nilfs = sb->s_fs_info;

	FUNC4(sb);

	if (!FUNC5(sb)) {
		FUNC1(&nilfs->ns_sem);
		FUNC3(sb);
		FUNC6(&nilfs->ns_sem);
	}

	FUNC2(nilfs->ns_sufile);
	FUNC2(nilfs->ns_cpfile);
	FUNC2(nilfs->ns_dat);

	FUNC0(nilfs);
	sb->s_fs_info = NULL;
}