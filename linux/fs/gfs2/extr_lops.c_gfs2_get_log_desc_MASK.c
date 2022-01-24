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
typedef  int /*<<< orphan*/  u32 ;
struct page {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
struct TYPE_2__ {void* mh_format; void* mh_type; void* mh_magic; } ;
struct gfs2_log_descriptor {scalar_t__ ld_data2; void* ld_data1; void* ld_length; void* ld_type; TYPE_1__ ld_header; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  GFS2_FORMAT_LD ; 
 int /*<<< orphan*/  GFS2_MAGIC ; 
 int /*<<< orphan*/  GFS2_METATYPE_LD ; 
 int /*<<< orphan*/  FUNC0 (struct gfs2_log_descriptor*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gfs2_page_pool ; 
 struct page* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct gfs2_log_descriptor* FUNC3 (struct page*) ; 

__attribute__((used)) static struct page *FUNC4(struct gfs2_sbd *sdp, u32 ld_type,
				      u32 ld_length, u32 ld_data1)
{
	struct page *page = FUNC2(gfs2_page_pool, GFP_NOIO);
	struct gfs2_log_descriptor *ld = FUNC3(page);
	FUNC0(ld);
	ld->ld_header.mh_magic = FUNC1(GFS2_MAGIC);
	ld->ld_header.mh_type = FUNC1(GFS2_METATYPE_LD);
	ld->ld_header.mh_format = FUNC1(GFS2_FORMAT_LD);
	ld->ld_type = FUNC1(ld_type);
	ld->ld_length = FUNC1(ld_length);
	ld->ld_data1 = FUNC1(ld_data1);
	ld->ld_data2 = 0;
	return page;
}