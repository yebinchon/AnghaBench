#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ ar_rgrplvb; } ;
struct gfs2_sbd {TYPE_1__ sd_args; } ;
struct gfs2_rgrpd {unsigned int rd_length; int rd_flags; struct gfs2_bitmap* rd_bits; TYPE_2__* rd_rgl; int /*<<< orphan*/  rd_free; int /*<<< orphan*/  rd_extfail_pt; int /*<<< orphan*/  rd_free_clone; scalar_t__ rd_addr; struct gfs2_glock* rd_gl; struct gfs2_sbd* rd_sbd; } ;
struct gfs2_glock {int dummy; } ;
struct gfs2_bitmap {int /*<<< orphan*/  bi_clone; TYPE_3__* bi_bh; int /*<<< orphan*/  bi_flags; } ;
struct TYPE_9__ {int /*<<< orphan*/  b_data; } ;
struct TYPE_8__ {scalar_t__ rl_magic; scalar_t__ rl_unlinked; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GBF_FULL ; 
 int /*<<< orphan*/  GFS2_MAGIC ; 
 int /*<<< orphan*/  GFS2_METATYPE_RB ; 
 int /*<<< orphan*/  GFS2_METATYPE_RG ; 
 int GFS2_RDF_CHECK ; 
 int GFS2_RDF_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_rgrpd*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_sbd*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_rgrpd*) ; 
 int FUNC6 (struct gfs2_glock*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__**) ; 
 int FUNC7 (struct gfs2_sbd*,TYPE_3__*) ; 
 scalar_t__ FUNC8 (struct gfs2_sbd*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct gfs2_rgrpd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct gfs2_rgrpd*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct gfs2_rgrpd *rgd)
{
	struct gfs2_sbd *sdp = rgd->rd_sbd;
	struct gfs2_glock *gl = rgd->rd_gl;
	unsigned int length = rgd->rd_length;
	struct gfs2_bitmap *bi;
	unsigned int x, y;
	int error;

	if (rgd->rd_bits[0].bi_bh != NULL)
		return 0;

	for (x = 0; x < length; x++) {
		bi = rgd->rd_bits + x;
		error = FUNC6(gl, rgd->rd_addr + x, 0, 0, &bi->bi_bh);
		if (error)
			goto fail;
	}

	for (y = length; y--;) {
		bi = rgd->rd_bits + y;
		error = FUNC7(sdp, bi->bi_bh);
		if (error)
			goto fail;
		if (FUNC8(sdp, bi->bi_bh, y ? GFS2_METATYPE_RB :
					      GFS2_METATYPE_RG)) {
			error = -EIO;
			goto fail;
		}
	}

	if (!(rgd->rd_flags & GFS2_RDF_UPTODATE)) {
		for (x = 0; x < length; x++)
			FUNC1(GBF_FULL, &rgd->rd_bits[x].bi_flags);
		FUNC9(rgd, (rgd->rd_bits[0].bi_bh)->b_data);
		rgd->rd_flags |= (GFS2_RDF_UPTODATE | GFS2_RDF_CHECK);
		rgd->rd_free_clone = rgd->rd_free;
		/* max out the rgrp allocation failure point */
		rgd->rd_extfail_pt = rgd->rd_free;
	}
	if (FUNC3(GFS2_MAGIC) != rgd->rd_rgl->rl_magic) {
		rgd->rd_rgl->rl_unlinked = FUNC3(FUNC2(rgd));
		FUNC11(rgd->rd_rgl,
				     rgd->rd_bits[0].bi_bh->b_data);
	}
	else if (sdp->sd_args.ar_rgrplvb) {
		if (!FUNC10(rgd)){
			FUNC5(rgd);
			error = -EIO;
			goto fail;
		}
		if (rgd->rd_rgl->rl_unlinked == 0)
			rgd->rd_flags &= ~GFS2_RDF_CHECK;
	}
	return 0;

fail:
	while (x--) {
		bi = rgd->rd_bits + x;
		FUNC0(bi->bi_bh);
		bi->bi_bh = NULL;
		FUNC4(sdp, !bi->bi_clone);
	}

	return error;
}