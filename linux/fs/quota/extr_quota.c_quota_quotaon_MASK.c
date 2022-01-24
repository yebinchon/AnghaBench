#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct super_block {TYPE_1__* s_qcop; } ;
struct path {int dummy; } ;
typedef  int /*<<< orphan*/  qid_t ;
struct TYPE_2__ {int (* quota_on ) (struct super_block*,int,int /*<<< orphan*/ ,struct path const*) ;int (* quota_enable ) (struct super_block*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int ENOSYS ; 
 scalar_t__ FUNC0 (struct path const*) ; 
 int FUNC1 (struct path const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct super_block*,int,int /*<<< orphan*/ ,struct path const*) ; 

__attribute__((used)) static int FUNC5(struct super_block *sb, int type, qid_t id,
		         const struct path *path)
{
	if (!sb->s_qcop->quota_on && !sb->s_qcop->quota_enable)
		return -ENOSYS;
	if (sb->s_qcop->quota_enable)
		return sb->s_qcop->quota_enable(sb, FUNC2(type));
	if (FUNC0(path))
		return FUNC1(path);
	return sb->s_qcop->quota_on(sb, type, id, path);
}