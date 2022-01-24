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
typedef  int /*<<< orphan*/  u64 ;
struct ceph_osd_data {scalar_t__ type; int /*<<< orphan*/  pagelist; int /*<<< orphan*/  pages; scalar_t__ length; scalar_t__ alignment; scalar_t__ own_pages; } ;

/* Variables and functions */
 scalar_t__ CEPH_OSD_DATA_TYPE_PAGELIST ; 
 scalar_t__ CEPH_OSD_DATA_TYPE_PAGES ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_osd_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct ceph_osd_data *osd_data)
{
	if (osd_data->type == CEPH_OSD_DATA_TYPE_PAGES && osd_data->own_pages) {
		int num_pages;

		num_pages = FUNC0((u64)osd_data->alignment,
						(u64)osd_data->length);
		FUNC3(osd_data->pages, num_pages);
	} else if (osd_data->type == CEPH_OSD_DATA_TYPE_PAGELIST) {
		FUNC2(osd_data->pagelist);
	}
	FUNC1(osd_data);
}