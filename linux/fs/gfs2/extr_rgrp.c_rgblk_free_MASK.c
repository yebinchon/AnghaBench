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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_rgrpd {int /*<<< orphan*/  rd_gl; } ;
struct gfs2_rbm {struct gfs2_rgrpd* rgd; } ;
struct gfs2_bitmap {TYPE_1__* bi_bh; int /*<<< orphan*/  bi_bytes; scalar_t__ bi_offset; scalar_t__ bi_clone; } ;
struct TYPE_2__ {scalar_t__ b_data; int /*<<< orphan*/  b_size; } ;

/* Variables and functions */
 int GFP_NOFS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int __GFP_NOFAIL ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_rbm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_rbm*) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_rbm*,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 struct gfs2_bitmap* FUNC7 (struct gfs2_rbm*) ; 

__attribute__((used)) static void FUNC8(struct gfs2_sbd *sdp, struct gfs2_rgrpd *rgd,
		       u64 bstart, u32 blen, unsigned char new_state)
{
	struct gfs2_rbm rbm;
	struct gfs2_bitmap *bi, *bi_prev = NULL;

	rbm.rgd = rgd;
	if (FUNC0(FUNC1(&rbm, bstart)))
		return;
	while (blen--) {
		bi = FUNC7(&rbm);
		if (bi != bi_prev) {
			if (!bi->bi_clone) {
				bi->bi_clone = FUNC5(bi->bi_bh->b_size,
						      GFP_NOFS | __GFP_NOFAIL);
				FUNC6(bi->bi_clone + bi->bi_offset,
				       bi->bi_bh->b_data + bi->bi_offset,
				       bi->bi_bytes);
			}
			FUNC4(rbm.rgd->rd_gl, bi->bi_bh);
			bi_prev = bi;
		}
		FUNC3(&rbm, false, new_state);
		FUNC2(&rbm);
	}
}