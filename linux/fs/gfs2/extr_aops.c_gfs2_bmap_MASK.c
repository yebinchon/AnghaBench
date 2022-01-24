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
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct address_space {int /*<<< orphan*/  host; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LM_FLAG_ANY ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_holder*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  gfs2_iomap_ops ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static sector_t FUNC5(struct address_space *mapping, sector_t lblock)
{
	struct gfs2_inode *ip = FUNC0(mapping->host);
	struct gfs2_holder i_gh;
	sector_t dblock = 0;
	int error;

	error = FUNC2(ip->i_gl, LM_ST_SHARED, LM_FLAG_ANY, &i_gh);
	if (error)
		return 0;

	if (!FUNC3(ip))
		dblock = FUNC4(mapping, lblock, &gfs2_iomap_ops);

	FUNC1(&i_gh);

	return dblock;
}