#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mtime; } ;
struct TYPE_3__ {int size; scalar_t__ iversion; scalar_t__ version; int /*<<< orphan*/  lock; int /*<<< orphan*/  mtime; int /*<<< orphan*/  cached; } ;
struct fuse_inode {TYPE_1__ rdc; } ;
struct TYPE_4__ {scalar_t__ pos; int cache_off; scalar_t__ version; } ;
struct fuse_file {TYPE_2__ readdir; } ;
struct fuse_conn {scalar_t__ auto_inval_data; } ;
struct file {int /*<<< orphan*/  f_mapping; struct fuse_file* private_data; } ;
struct dir_context {scalar_t__ pos; } ;
typedef  int pgoff_t ;
typedef  enum fuse_parse_result { ____Placeholder_fuse_parse_result } fuse_parse_result ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 int EIO ; 
 int FGP_ACCESSED ; 
 int FGP_LOCK ; 
 int FOUND_ALL ; 
 int FOUND_ERR ; 
 int FOUND_SOME ; 
 unsigned int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 unsigned int PAGE_SIZE ; 
 int UNCACHED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct inode* FUNC2 (struct file*) ; 
 struct page* FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (struct fuse_file*,void*,unsigned int,struct dir_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int FUNC6 (struct inode*,struct file*) ; 
 struct fuse_conn* FUNC7 (struct inode*) ; 
 struct fuse_inode* FUNC8 (struct inode*) ; 
 scalar_t__ FUNC9 (struct inode*) ; 
 scalar_t__ FUNC10 (struct inode*) ; 
 void* FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 

__attribute__((used)) static int FUNC18(struct file *file, struct dir_context *ctx)
{
	struct fuse_file *ff = file->private_data;
	struct inode *inode = FUNC2(file);
	struct fuse_conn *fc = FUNC7(inode);
	struct fuse_inode *fi = FUNC8(inode);
	enum fuse_parse_result res;
	pgoff_t index;
	unsigned int size;
	struct page *page;
	void *addr;

	/* Seeked?  If so, reset the cache stream */
	if (ff->readdir.pos != ctx->pos) {
		ff->readdir.pos = 0;
		ff->readdir.cache_off = 0;
	}

	/*
	 * We're just about to start reading into the cache or reading the
	 * cache; both cases require an up-to-date mtime value.
	 */
	if (!ctx->pos && fc->auto_inval_data) {
		int err = FUNC6(inode, file);

		if (err)
			return err;
	}

retry:
	FUNC14(&fi->rdc.lock);
retry_locked:
	if (!fi->rdc.cached) {
		/* Starting cache? Set cache mtime. */
		if (!ctx->pos && !fi->rdc.size) {
			fi->rdc.mtime = inode->i_mtime;
			fi->rdc.iversion = FUNC10(inode);
		}
		FUNC15(&fi->rdc.lock);
		return UNCACHED;
	}
	/*
	 * When at the beginning of the directory (i.e. just after opendir(3) or
	 * rewinddir(3)), then need to check whether directory contents have
	 * changed, and reset the cache if so.
	 */
	if (!ctx->pos) {
		if (FUNC9(inode) != fi->rdc.iversion ||
		    !FUNC16(&fi->rdc.mtime, &inode->i_mtime)) {
			FUNC5(inode);
			goto retry_locked;
		}
	}

	/*
	 * If cache version changed since the last getdents() call, then reset
	 * the cache stream.
	 */
	if (ff->readdir.version != fi->rdc.version) {
		ff->readdir.pos = 0;
		ff->readdir.cache_off = 0;
	}
	/*
	 * If at the beginning of the cache, than reset version to
	 * current.
	 */
	if (ff->readdir.pos == 0)
		ff->readdir.version = fi->rdc.version;

	FUNC1(fi->rdc.size < ff->readdir.cache_off);

	index = ff->readdir.cache_off >> PAGE_SHIFT;

	if (index == (fi->rdc.size >> PAGE_SHIFT))
		size = fi->rdc.size & ~PAGE_MASK;
	else
		size = PAGE_SIZE;
	FUNC15(&fi->rdc.lock);

	/* EOF? */
	if ((ff->readdir.cache_off & ~PAGE_MASK) == size)
		return 0;

	page = FUNC3(file->f_mapping, index,
				   FGP_ACCESSED | FGP_LOCK);
	FUNC14(&fi->rdc.lock);
	if (!page) {
		/*
		 * Uh-oh: page gone missing, cache is useless
		 */
		if (fi->rdc.version == ff->readdir.version)
			FUNC5(inode);
		goto retry_locked;
	}

	/* Make sure it's still the same version after getting the page. */
	if (ff->readdir.version != fi->rdc.version) {
		FUNC15(&fi->rdc.lock);
		FUNC17(page);
		FUNC13(page);
		goto retry;
	}
	FUNC15(&fi->rdc.lock);

	/*
	 * Contents of the page are now protected against changing by holding
	 * the page lock.
	 */
	addr = FUNC11(page);
	res = FUNC4(ff, addr, size, ctx);
	FUNC12(page);
	FUNC17(page);
	FUNC13(page);

	if (res == FOUND_ERR)
		return -EIO;

	if (res == FOUND_ALL)
		return 0;

	if (size == PAGE_SIZE) {
		/* We hit end of page: skip to next page. */
		ff->readdir.cache_off = FUNC0(ff->readdir.cache_off, PAGE_SIZE);
		goto retry;
	}

	/*
	 * End of cache reached.  If found position, then we are done, otherwise
	 * need to fall back to uncached, since the position we were looking for
	 * wasn't in the cache.
	 */
	return res == FOUND_SOME ? 0 : UNCACHED;
}