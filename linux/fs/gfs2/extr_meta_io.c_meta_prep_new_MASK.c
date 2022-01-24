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
struct gfs2_meta_header {int /*<<< orphan*/  mh_magic; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFS2_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 

__attribute__((used)) static void FUNC5(struct buffer_head *bh)
{
	struct gfs2_meta_header *mh = (struct gfs2_meta_header *)bh->b_data;

	FUNC2(bh);
	FUNC0(bh);
	FUNC3(bh);
	FUNC4(bh);

	mh->mh_magic = FUNC1(GFS2_MAGIC);
}