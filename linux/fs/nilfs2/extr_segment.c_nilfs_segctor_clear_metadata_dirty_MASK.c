#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct the_nilfs {int /*<<< orphan*/  ns_dat; int /*<<< orphan*/  ns_sufile; int /*<<< orphan*/  ns_cpfile; } ;
struct nilfs_sc_info {TYPE_2__* sc_root; TYPE_1__* sc_super; } ;
struct TYPE_4__ {int /*<<< orphan*/  ifile; } ;
struct TYPE_3__ {struct the_nilfs* s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct nilfs_sc_info *sci)
{
	struct the_nilfs *nilfs = sci->sc_super->s_fs_info;

	FUNC0(sci->sc_root->ifile);
	FUNC0(nilfs->ns_cpfile);
	FUNC0(nilfs->ns_sufile);
	FUNC0(nilfs->ns_dat);
}