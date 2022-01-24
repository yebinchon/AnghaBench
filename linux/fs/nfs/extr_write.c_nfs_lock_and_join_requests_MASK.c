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
struct nfs_page {unsigned int wb_bytes; scalar_t__ wb_offset; int /*<<< orphan*/  wb_kref; int /*<<< orphan*/  wb_flags; struct nfs_page* wb_this_page; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  nrequests; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int EIO ; 
 struct nfs_page* FUNC0 (int) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  PG_INODE_REF ; 
 int /*<<< orphan*/  PG_REMOVE ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfs_page*,struct nfs_page*,struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct nfs_page*) ; 
 struct nfs_page* FUNC11 (struct page*) ; 
 int FUNC12 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC13 (struct nfs_page*) ; 
 struct nfs_page* FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC16 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,struct nfs_page*,struct nfs_page*) ; 
 int FUNC18 (struct nfs_page*) ; 
 TYPE_1__* FUNC19 (struct page*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nfs_page *
FUNC22(struct page *page)
{
	struct inode *inode = FUNC19(page)->host;
	struct nfs_page *head, *subreq;
	struct nfs_page *destroy_list = NULL;
	unsigned int total_bytes;
	int ret;

try_again:
	/*
	 * A reference is taken only on the head request which acts as a
	 * reference to the whole page group - the group will not be destroyed
	 * until the head reference is released.
	 */
	head = FUNC11(page);
	if (!head)
		return NULL;

	/* lock the page head first in order to avoid an ABBA inefficiency */
	if (!FUNC10(head)) {
		ret = FUNC18(head);
		FUNC15(head);
		if (ret < 0)
			return FUNC0(ret);
		goto try_again;
	}

	/* Ensure that nobody removed the request before we locked it */
	if (head != FUNC14(page) && !FUNC3(page)) {
		FUNC16(head);
		goto try_again;
	}

	ret = FUNC12(head);
	if (ret < 0)
		goto release_request;

	/* lock each request in the page group */
	total_bytes = head->wb_bytes;
	for (subreq = head->wb_this_page; subreq != head;
			subreq = subreq->wb_this_page) {

		if (!FUNC7(&subreq->wb_kref)) {
			if (subreq->wb_offset == head->wb_offset + total_bytes)
				total_bytes += subreq->wb_bytes;
			continue;
		}

		while (!FUNC10(subreq)) {
			/*
			 * Unlock page to allow nfs_page_group_sync_on_bit()
			 * to succeed
			 */
			FUNC13(head);
			ret = FUNC18(subreq);
			if (!ret)
				ret = FUNC12(head);
			if (ret < 0) {
				FUNC17(inode, head, subreq);
				FUNC15(subreq);
				goto release_request;
			}
		}
		/*
		 * Subrequests are always contiguous, non overlapping
		 * and in order - but may be repeated (mirrored writes).
		 */
		if (subreq->wb_offset == (head->wb_offset + total_bytes)) {
			/* keep track of how many bytes this group covers */
			total_bytes += subreq->wb_bytes;
		} else if (FUNC4(subreq->wb_offset < head->wb_offset ||
			    ((subreq->wb_offset + subreq->wb_bytes) >
			     (head->wb_offset + total_bytes)))) {
			FUNC13(head);
			FUNC17(inode, head, subreq);
			FUNC16(subreq);
			ret = -EIO;
			goto release_request;
		}
	}

	/* Now that all requests are locked, make sure they aren't on any list.
	 * Commit list removal accounting is done after locks are dropped */
	subreq = head;
	do {
		FUNC8(subreq);
		subreq = subreq->wb_this_page;
	} while (subreq != head);

	/* unlink subrequests from head, destroy them later */
	if (head->wb_this_page != head) {
		/* destroy list will be terminated by head */
		destroy_list = head->wb_this_page;
		head->wb_this_page = head;

		/* change head request to cover whole range that
		 * the former page group covered */
		head->wb_bytes = total_bytes;
	}

	/* Postpone destruction of this request */
	if (FUNC21(PG_REMOVE, &head->wb_flags)) {
		FUNC20(PG_INODE_REF, &head->wb_flags);
		FUNC6(&head->wb_kref);
		FUNC5(&FUNC1(inode)->nrequests);
	}

	FUNC13(head);

	FUNC9(destroy_list, head, inode);

	/* Did we lose a race with nfs_inode_remove_request()? */
	if (!(FUNC2(page) || FUNC3(page))) {
		FUNC16(head);
		return NULL;
	}

	/* still holds ref on head from nfs_page_find_head_request
	 * and still has lock on head from lock loop */
	return head;

release_request:
	FUNC16(head);
	return FUNC0(ret);
}