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
struct gfs2_inode {void** i_hash_cache; int /*<<< orphan*/  i_inode; int /*<<< orphan*/  i_depth; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
typedef  void* __be64 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int GFP_NOFS ; 
 scalar_t__ FUNC1 (void**) ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 int FUNC2 (void**) ; 
 int __GFP_NOWARN ; 
 void** FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_inode*,int /*<<< orphan*/ ) ; 
 void** FUNC6 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_inode*) ; 
 int FUNC8 (struct gfs2_inode*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct gfs2_inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 void** FUNC11 (int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (void**) ; 

__attribute__((used)) static int FUNC13(struct gfs2_inode *dip)
{
	struct buffer_head *dibh;
	u32 hsize;
	u32 hsize_bytes;
	__be64 *hc;
	__be64 *hc2, *h;
	int x;
	int error = 0;

	hsize = FUNC0(dip->i_depth);
	hsize_bytes = hsize * sizeof(__be64);

	hc = FUNC6(dip);
	if (FUNC1(hc))
		return FUNC2(hc);

	hc2 = FUNC11(hsize_bytes, 2, GFP_NOFS | __GFP_NOWARN);
	if (hc2 == NULL)
		hc2 = FUNC3(hsize_bytes * 2, GFP_NOFS, PAGE_KERNEL);

	if (!hc2)
		return -ENOMEM;

	h = hc2;
	error = FUNC9(dip, &dibh);
	if (error)
		goto out_kfree;

	for (x = 0; x < hsize; x++) {
		*h++ = *hc;
		*h++ = *hc;
		hc++;
	}

	error = FUNC8(dip, (char *)hc2, 0, hsize_bytes * 2);
	if (error != (hsize_bytes * 2))
		goto fail;

	FUNC7(dip);
	dip->i_hash_cache = hc2;
	dip->i_depth++;
	FUNC5(dip, dibh->b_data);
	FUNC4(dibh);
	return 0;

fail:
	/* Replace original hash table & size */
	FUNC8(dip, (char *)hc, 0, hsize_bytes);
	FUNC10(&dip->i_inode, hsize_bytes);
	FUNC5(dip, dibh->b_data);
	FUNC4(dibh);
out_kfree:
	FUNC12(hc2);
	return error;
}