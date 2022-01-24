#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct writeback_control {int dummy; } ;
struct orangefs_writepages {int npages; size_t off; size_t len; TYPE_1__** pages; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; TYPE_7__* bv; } ;
struct orangefs_write_range {int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  size_t loff_t ;
struct TYPE_14__ {scalar_t__ bv_offset; scalar_t__ bv_len; TYPE_1__* bv_page; } ;
struct TYPE_13__ {struct inode* host; } ;
struct TYPE_12__ {TYPE_6__* mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  ORANGEFS_IO_WRITE ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 size_t FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct iov_iter*,int /*<<< orphan*/ ,TYPE_7__*,int,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct orangefs_write_range*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,scalar_t__) ; 
 scalar_t__ FUNC9 (size_t,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,size_t) ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 
 scalar_t__ FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,struct inode*,size_t*,struct iov_iter*,size_t,int /*<<< orphan*/ ,struct orangefs_write_range*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct orangefs_writepages *ow,
    struct writeback_control *wbc)
{
	struct inode *inode = ow->pages[0]->mapping->host;
	struct orangefs_write_range *wrp, wr;
	struct iov_iter iter;
	ssize_t ret;
	size_t len;
	loff_t off;
	int i;

	len = FUNC5(inode);

	for (i = 0; i < ow->npages; i++) {
		FUNC14(ow->pages[i]);
		ow->bv[i].bv_page = ow->pages[i];
		ow->bv[i].bv_len = FUNC10(FUNC11(ow->pages[i]) + PAGE_SIZE,
		    ow->off + ow->len) -
		    FUNC9(ow->off, FUNC11(ow->pages[i]));
		if (i == 0)
			ow->bv[i].bv_offset = ow->off -
			    FUNC11(ow->pages[i]);
		else
			ow->bv[i].bv_offset = 0;
	}
	FUNC6(&iter, WRITE, ow->bv, ow->npages, ow->len);

	FUNC3(ow->off >= len);
	if (ow->off + ow->len > len)
		ow->len = len - ow->off;

	off = ow->off;
	wr.uid = ow->uid;
	wr.gid = ow->gid;
	ret = FUNC16(ORANGEFS_IO_WRITE, inode, &off, &iter, ow->len,
	    0, &wr, NULL);
	if (ret < 0) {
		for (i = 0; i < ow->npages; i++) {
			FUNC2(ow->pages[i]);
			FUNC8(ow->pages[i]->mapping, ret);
			if (FUNC1(ow->pages[i])) {
				wrp = (struct orangefs_write_range *)
				    FUNC12(ow->pages[i]);
				FUNC0(ow->pages[i]);
				FUNC13(ow->pages[i]);
				FUNC7(wrp);
			}
			FUNC4(ow->pages[i]);
			FUNC15(ow->pages[i]);
		}
	} else {
		ret = 0;
		for (i = 0; i < ow->npages; i++) {
			if (FUNC1(ow->pages[i])) {
				wrp = (struct orangefs_write_range *)
				    FUNC12(ow->pages[i]);
				FUNC0(ow->pages[i]);
				FUNC13(ow->pages[i]);
				FUNC7(wrp);
			}
			FUNC4(ow->pages[i]);
			FUNC15(ow->pages[i]);
		}
	}
	return ret;
}