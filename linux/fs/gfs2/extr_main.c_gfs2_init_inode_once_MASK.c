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
struct TYPE_2__ {int /*<<< orphan*/  rs_node; } ;
struct gfs2_inode {int /*<<< orphan*/  i_iopen_gh; int /*<<< orphan*/ * i_hash_cache; TYPE_1__ i_res; int /*<<< orphan*/  i_rgd_gh; int /*<<< orphan*/ * i_qadata; int /*<<< orphan*/  i_trunc_list; int /*<<< orphan*/  i_rw_mutex; int /*<<< orphan*/  i_sizehint; int /*<<< orphan*/  i_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(void *foo)
{
	struct gfs2_inode *ip = foo;

	FUNC5(&ip->i_inode);
	FUNC2(&ip->i_sizehint, 0);
	FUNC4(&ip->i_rw_mutex);
	FUNC0(&ip->i_trunc_list);
	ip->i_qadata = NULL;
	FUNC3(&ip->i_rgd_gh);
	FUNC6(&ip->i_res, 0, sizeof(ip->i_res));
	FUNC1(&ip->i_res.rs_node);
	ip->i_hash_cache = NULL;
	FUNC3(&ip->i_iopen_gh);
}