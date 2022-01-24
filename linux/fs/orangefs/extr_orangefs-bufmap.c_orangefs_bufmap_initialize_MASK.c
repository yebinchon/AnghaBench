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
struct orangefs_bufmap {int /*<<< orphan*/  readdir_index_array; int /*<<< orphan*/  buffer_index_array; int /*<<< orphan*/  desc_count; } ;
struct ORANGEFS_dev_map_desc {int size; int count; unsigned long total_size; scalar_t__ ptr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GOSSIP_BUFMAP_DEBUG ; 
 int /*<<< orphan*/  ORANGEFS_READDIR_DEFAULT_DESC_COUNT ; 
 unsigned long FUNC0 (unsigned long) ; 
 int PAGE_SIZE ; 
 struct orangefs_bufmap* __orangefs_bufmap ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct orangefs_bufmap* FUNC4 (struct ORANGEFS_dev_map_desc*) ; 
 int /*<<< orphan*/  FUNC5 (struct orangefs_bufmap*) ; 
 int /*<<< orphan*/  orangefs_bufmap_lock ; 
 int FUNC6 (struct orangefs_bufmap*,struct ORANGEFS_dev_map_desc*) ; 
 int /*<<< orphan*/  FUNC7 (struct orangefs_bufmap*) ; 
 int /*<<< orphan*/  readdir_map ; 
 int /*<<< orphan*/  rw_map ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct ORANGEFS_dev_map_desc *user_desc)
{
	struct orangefs_bufmap *bufmap;
	int ret = -EINVAL;

	FUNC1(GOSSIP_BUFMAP_DEBUG,
		     "orangefs_bufmap_initialize: called (ptr ("
		     "%p) sz (%d) cnt(%d).\n",
		     user_desc->ptr,
		     user_desc->size,
		     user_desc->count);

	if (user_desc->total_size < 0 ||
	    user_desc->size < 0 ||
	    user_desc->count < 0)
		goto out;

	/*
	 * sanity check alignment and size of buffer that caller wants to
	 * work with
	 */
	if (FUNC0((unsigned long)user_desc->ptr) !=
	    (unsigned long)user_desc->ptr) {
		FUNC2("orangefs error: memory alignment (front). %p\n",
			   user_desc->ptr);
		goto out;
	}

	if (FUNC0(((unsigned long)user_desc->ptr + user_desc->total_size))
	    != (unsigned long)(user_desc->ptr + user_desc->total_size)) {
		FUNC2("orangefs error: memory alignment (back).(%p + %d)\n",
			   user_desc->ptr,
			   user_desc->total_size);
		goto out;
	}

	if (user_desc->total_size != (user_desc->size * user_desc->count)) {
		FUNC2("orangefs error: user provided an oddly sized buffer: (%d, %d, %d)\n",
			   user_desc->total_size,
			   user_desc->size,
			   user_desc->count);
		goto out;
	}

	if ((user_desc->size % PAGE_SIZE) != 0) {
		FUNC2("orangefs error: bufmap size not page size divisible (%d).\n",
			   user_desc->size);
		goto out;
	}

	ret = -ENOMEM;
	bufmap = FUNC4(user_desc);
	if (!bufmap)
		goto out;

	ret = FUNC6(bufmap, user_desc);
	if (ret)
		goto out_free_bufmap;


	FUNC8(&orangefs_bufmap_lock);
	if (__orangefs_bufmap) {
		FUNC9(&orangefs_bufmap_lock);
		FUNC2("orangefs: error: bufmap already initialized.\n");
		ret = -EINVAL;
		goto out_unmap_bufmap;
	}
	__orangefs_bufmap = bufmap;
	FUNC3(&rw_map,
		bufmap->desc_count,
		bufmap->buffer_index_array);
	FUNC3(&readdir_map,
		ORANGEFS_READDIR_DEFAULT_DESC_COUNT,
		bufmap->readdir_index_array);
	FUNC9(&orangefs_bufmap_lock);

	FUNC1(GOSSIP_BUFMAP_DEBUG,
		     "orangefs_bufmap_initialize: exiting normally\n");
	return 0;

out_unmap_bufmap:
	FUNC7(bufmap);
out_free_bufmap:
	FUNC5(bufmap);
out:
	return ret;
}