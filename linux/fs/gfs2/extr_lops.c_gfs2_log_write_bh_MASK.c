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
struct gfs2_sbd {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_size; int /*<<< orphan*/  b_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_sbd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct gfs2_sbd *sdp, struct buffer_head *bh)
{
	FUNC2(sdp, bh->b_page, bh->b_size, FUNC0(bh),
		       FUNC1(sdp));
}