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
typedef  int /*<<< orphan*/  u8 ;
struct page {int dummy; } ;
struct ceph_osd_request {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int CEPH_ENCODING_START_BLK_LEN ; 
 int E2BIG ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 scalar_t__ FUNC0 (struct page**) ; 
 int PAGE_SIZE ; 
 int FUNC1 (struct page**) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct page** FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void**,void*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (void**,int,int,int) ; 
 int FUNC7 (struct ceph_osd_request*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct ceph_osd_request*,int,struct page**,int,int /*<<< orphan*/ ,int,int) ; 
 void* FUNC9 (struct page*) ; 
 int FUNC10 (char*) ; 

int FUNC11(struct ceph_osd_request *req, int which,
			   char *lock_name, u8 type, char *cookie, char *tag)
{
	int assert_op_buf_size;
	int name_len = FUNC10(lock_name);
	int cookie_len = FUNC10(cookie);
	int tag_len = FUNC10(tag);
	struct page **pages;
	void *p, *end;
	int ret;

	assert_op_buf_size = name_len + sizeof(__le32) +
			     cookie_len + sizeof(__le32) +
			     tag_len + sizeof(__le32) +
			     sizeof(u8) + CEPH_ENCODING_START_BLK_LEN;
	if (assert_op_buf_size > PAGE_SIZE)
		return -E2BIG;

	ret = FUNC7(req, which, "lock", "assert_locked");
	if (ret)
		return ret;

	pages = FUNC3(1, GFP_NOIO);
	if (FUNC0(pages))
		return FUNC1(pages);

	p = FUNC9(pages[0]);
	end = p + assert_op_buf_size;

	/* encode cls_lock_assert_op struct */
	FUNC6(&p, 1, 1,
			    assert_op_buf_size - CEPH_ENCODING_START_BLK_LEN);
	FUNC5(&p, end, lock_name, name_len);
	FUNC4(&p, type);
	FUNC5(&p, end, cookie, cookie_len);
	FUNC5(&p, end, tag, tag_len);
	FUNC2(p != end);

	FUNC8(req, which, pages, assert_op_buf_size,
					  0, false, true);
	return 0;
}