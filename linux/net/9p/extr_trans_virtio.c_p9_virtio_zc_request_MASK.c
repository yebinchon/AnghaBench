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
typedef  int /*<<< orphan*/  sz ;
struct virtio_chan {int ring_bufs_avail; int /*<<< orphan*/  lock; int /*<<< orphan*/  vq; int /*<<< orphan*/ * vc_wq; struct scatterlist* sg; } ;
struct scatterlist {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * sdata; } ;
struct TYPE_3__ {int size; int /*<<< orphan*/ * sdata; } ;
struct p9_req_t {scalar_t__ status; int /*<<< orphan*/  wq; TYPE_2__ rc; TYPE_1__ tc; } ;
struct p9_client {struct virtio_chan* trans; } ;
struct iov_iter {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int FUNC0 (struct scatterlist**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int EIO ; 
 int ENOSPC ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  P9_DEBUG_TRANS ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ REQ_STATUS_RCVD ; 
 scalar_t__ REQ_STATUS_SENT ; 
 int /*<<< orphan*/  VIRTQUEUE_NUM ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct page**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (struct virtio_chan*,struct page***,struct iov_iter*,int,size_t*,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct page**,int) ; 
 int /*<<< orphan*/  FUNC10 (struct p9_req_t*) ; 
 int FUNC11 (struct scatterlist*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (struct scatterlist*,int,int /*<<< orphan*/ ,struct page**,int,size_t,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC15 (int /*<<< orphan*/ ,struct scatterlist**,int,int,struct p9_req_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vp_pinned ; 
 int /*<<< orphan*/  vp_wq ; 
 int FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC19(struct p9_client *client, struct p9_req_t *req,
		     struct iov_iter *uidata, struct iov_iter *uodata,
		     int inlen, int outlen, int in_hdr_len)
{
	int in, out, err, out_sgs, in_sgs;
	unsigned long flags;
	int in_nr_pages = 0, out_nr_pages = 0;
	struct page **in_pages = NULL, **out_pages = NULL;
	struct virtio_chan *chan = client->trans;
	struct scatterlist *sgs[4];
	size_t offs;
	int need_drop = 0;
	int kicked = 0;

	FUNC7(P9_DEBUG_TRANS, "virtio request\n");

	if (uodata) {
		__le32 sz;
		int n = FUNC8(chan, &out_pages, uodata,
					    outlen, &offs, &need_drop);
		if (n < 0) {
			err = n;
			goto err_out;
		}
		out_nr_pages = FUNC2(n + offs, PAGE_SIZE);
		if (n != outlen) {
			__le32 v = FUNC4(n);
			FUNC6(&req->tc.sdata[req->tc.size - 4], &v, 4);
			outlen = n;
		}
		/* The size field of the message must include the length of the
		 * header and the length of the data.  We didn't actually know
		 * the length of the data until this point so add it in now.
		 */
		sz = FUNC4(req->tc.size + outlen);
		FUNC6(&req->tc.sdata[0], &sz, sizeof(sz));
	} else if (uidata) {
		int n = FUNC8(chan, &in_pages, uidata,
					    inlen, &offs, &need_drop);
		if (n < 0) {
			err = n;
			goto err_out;
		}
		in_nr_pages = FUNC2(n + offs, PAGE_SIZE);
		if (n != inlen) {
			__le32 v = FUNC4(n);
			FUNC6(&req->tc.sdata[req->tc.size - 4], &v, 4);
			inlen = n;
		}
	}
	req->status = REQ_STATUS_SENT;
req_retry_pinned:
	FUNC13(&chan->lock, flags);

	out_sgs = in_sgs = 0;

	/* out data */
	out = FUNC11(chan->sg, 0,
			   VIRTQUEUE_NUM, req->tc.sdata, req->tc.size);

	if (out)
		sgs[out_sgs++] = chan->sg;

	if (out_pages) {
		sgs[out_sgs++] = chan->sg + out;
		out += FUNC12(chan->sg, out, VIRTQUEUE_NUM,
				      out_pages, out_nr_pages, offs, outlen);
	}

	/*
	 * Take care of in data
	 * For example TREAD have 11.
	 * 11 is the read/write header = PDU Header(7) + IO Size (4).
	 * Arrange in such a way that server places header in the
	 * alloced memory and payload onto the user buffer.
	 */
	in = FUNC11(chan->sg, out,
			  VIRTQUEUE_NUM, req->rc.sdata, in_hdr_len);
	if (in)
		sgs[out_sgs + in_sgs++] = chan->sg + out;

	if (in_pages) {
		sgs[out_sgs + in_sgs++] = chan->sg + out + in;
		in += FUNC12(chan->sg, out + in, VIRTQUEUE_NUM,
				     in_pages, in_nr_pages, offs, inlen);
	}

	FUNC1(out_sgs + in_sgs > FUNC0(sgs));
	err = FUNC15(chan->vq, sgs, out_sgs, in_sgs, req,
				GFP_ATOMIC);
	if (err < 0) {
		if (err == -ENOSPC) {
			chan->ring_bufs_avail = 0;
			FUNC14(&chan->lock, flags);
			err = FUNC17(*chan->vc_wq,
						  chan->ring_bufs_avail);
			if (err  == -ERESTARTSYS)
				goto err_out;

			FUNC7(P9_DEBUG_TRANS, "Retry virtio request\n");
			goto req_retry_pinned;
		} else {
			FUNC14(&chan->lock, flags);
			FUNC7(P9_DEBUG_TRANS,
				 "virtio rpc add_sgs returned failure\n");
			err = -EIO;
			goto err_out;
		}
	}
	FUNC16(chan->vq);
	FUNC14(&chan->lock, flags);
	kicked = 1;
	FUNC7(P9_DEBUG_TRANS, "virtio request kicked\n");
	err = FUNC17(req->wq, req->status >= REQ_STATUS_RCVD);
	/*
	 * Non kernel buffers are pinned, unpin them
	 */
err_out:
	if (need_drop) {
		if (in_pages) {
			FUNC9(in_pages, in_nr_pages);
			FUNC3(in_nr_pages, &vp_pinned);
		}
		if (out_pages) {
			FUNC9(out_pages, out_nr_pages);
			FUNC3(out_nr_pages, &vp_pinned);
		}
		/* wakeup anybody waiting for slots to pin pages */
		FUNC18(&vp_wq);
	}
	FUNC5(in_pages);
	FUNC5(out_pages);
	if (!kicked) {
		/* reply won't come */
		FUNC10(req);
	}
	return err;
}