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
typedef  int u32 ;
struct gfs2_rgrpd {int rd_flags; int rd_free; int rd_dinodes; scalar_t__ rd_addr; int rd_data; int rd_bitbytes; int /*<<< orphan*/  rd_rgl; int /*<<< orphan*/  rd_data0; int /*<<< orphan*/  rd_igeneration; } ;
struct gfs2_rgrp {int /*<<< orphan*/  rg_reserved; void* rg_crc; void* rg_bitbytes; void* rg_data; void* rg_data0; void* rg_igeneration; void* rg_skip; void* rg_dinodes; void* rg_free; void* rg_flags; } ;

/* Variables and functions */
 int GFS2_RDF_MASK ; 
 void* FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 struct gfs2_rgrpd* FUNC4 (struct gfs2_rgrpd*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct gfs2_rgrpd *rgd, void *buf)
{
	struct gfs2_rgrpd *next = FUNC4(rgd);
	struct gfs2_rgrp *str = buf;
	u32 crc;

	str->rg_flags = FUNC0(rgd->rd_flags & ~GFS2_RDF_MASK);
	str->rg_free = FUNC0(rgd->rd_free);
	str->rg_dinodes = FUNC0(rgd->rd_dinodes);
	if (next == NULL)
		str->rg_skip = 0;
	else if (next->rd_addr > rgd->rd_addr)
		str->rg_skip = FUNC0(next->rd_addr - rgd->rd_addr);
	str->rg_igeneration = FUNC1(rgd->rd_igeneration);
	str->rg_data0 = FUNC1(rgd->rd_data0);
	str->rg_data = FUNC0(rgd->rd_data);
	str->rg_bitbytes = FUNC0(rgd->rd_bitbytes);
	str->rg_crc = 0;
	crc = FUNC2(buf, sizeof(struct gfs2_rgrp));
	str->rg_crc = FUNC0(crc);

	FUNC5(&str->rg_reserved, 0, sizeof(str->rg_reserved));
	FUNC3(rgd->rd_rgl, buf);
}