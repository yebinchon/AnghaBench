
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sz ;
struct virtio_chan {int ring_bufs_avail; int lock; int vq; int * vc_wq; struct scatterlist* sg; } ;
struct scatterlist {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_4__ {int * sdata; } ;
struct TYPE_3__ {int size; int * sdata; } ;
struct p9_req_t {scalar_t__ status; int wq; TYPE_2__ rc; TYPE_1__ tc; } ;
struct p9_client {struct virtio_chan* trans; } ;
struct iov_iter {int dummy; } ;
typedef int __le32 ;


 int ARRAY_SIZE (struct scatterlist**) ;
 int BUG_ON (int) ;
 int DIV_ROUND_UP (int,int ) ;
 int EIO ;
 int ENOSPC ;
 int ERESTARTSYS ;
 int GFP_ATOMIC ;
 int P9_DEBUG_TRANS ;
 int PAGE_SIZE ;
 scalar_t__ REQ_STATUS_RCVD ;
 scalar_t__ REQ_STATUS_SENT ;
 int VIRTQUEUE_NUM ;
 int atomic_sub (int,int *) ;
 int cpu_to_le32 (int) ;
 int kvfree (struct page**) ;
 int memcpy (int *,int *,int) ;
 int p9_debug (int ,char*) ;
 int p9_get_mapped_pages (struct virtio_chan*,struct page***,struct iov_iter*,int,size_t*,int*) ;
 int p9_release_pages (struct page**,int) ;
 int p9_req_put (struct p9_req_t*) ;
 int pack_sg_list (struct scatterlist*,int,int ,int *,int) ;
 scalar_t__ pack_sg_list_p (struct scatterlist*,int,int ,struct page**,int,size_t,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int virtqueue_add_sgs (int ,struct scatterlist**,int,int,struct p9_req_t*,int ) ;
 int virtqueue_kick (int ) ;
 int vp_pinned ;
 int vp_wq ;
 int wait_event_killable (int ,int) ;
 int wake_up (int *) ;

__attribute__((used)) static int
p9_virtio_zc_request(struct p9_client *client, struct p9_req_t *req,
       struct iov_iter *uidata, struct iov_iter *uodata,
       int inlen, int outlen, int in_hdr_len)
{
 int in, out, err, out_sgs, in_sgs;
 unsigned long flags;
 int in_nr_pages = 0, out_nr_pages = 0;
 struct page **in_pages = ((void*)0), **out_pages = ((void*)0);
 struct virtio_chan *chan = client->trans;
 struct scatterlist *sgs[4];
 size_t offs;
 int need_drop = 0;
 int kicked = 0;

 p9_debug(P9_DEBUG_TRANS, "virtio request\n");

 if (uodata) {
  __le32 sz;
  int n = p9_get_mapped_pages(chan, &out_pages, uodata,
         outlen, &offs, &need_drop);
  if (n < 0) {
   err = n;
   goto err_out;
  }
  out_nr_pages = DIV_ROUND_UP(n + offs, PAGE_SIZE);
  if (n != outlen) {
   __le32 v = cpu_to_le32(n);
   memcpy(&req->tc.sdata[req->tc.size - 4], &v, 4);
   outlen = n;
  }




  sz = cpu_to_le32(req->tc.size + outlen);
  memcpy(&req->tc.sdata[0], &sz, sizeof(sz));
 } else if (uidata) {
  int n = p9_get_mapped_pages(chan, &in_pages, uidata,
         inlen, &offs, &need_drop);
  if (n < 0) {
   err = n;
   goto err_out;
  }
  in_nr_pages = DIV_ROUND_UP(n + offs, PAGE_SIZE);
  if (n != inlen) {
   __le32 v = cpu_to_le32(n);
   memcpy(&req->tc.sdata[req->tc.size - 4], &v, 4);
   inlen = n;
  }
 }
 req->status = REQ_STATUS_SENT;
req_retry_pinned:
 spin_lock_irqsave(&chan->lock, flags);

 out_sgs = in_sgs = 0;


 out = pack_sg_list(chan->sg, 0,
      VIRTQUEUE_NUM, req->tc.sdata, req->tc.size);

 if (out)
  sgs[out_sgs++] = chan->sg;

 if (out_pages) {
  sgs[out_sgs++] = chan->sg + out;
  out += pack_sg_list_p(chan->sg, out, VIRTQUEUE_NUM,
          out_pages, out_nr_pages, offs, outlen);
 }
 in = pack_sg_list(chan->sg, out,
     VIRTQUEUE_NUM, req->rc.sdata, in_hdr_len);
 if (in)
  sgs[out_sgs + in_sgs++] = chan->sg + out;

 if (in_pages) {
  sgs[out_sgs + in_sgs++] = chan->sg + out + in;
  in += pack_sg_list_p(chan->sg, out + in, VIRTQUEUE_NUM,
         in_pages, in_nr_pages, offs, inlen);
 }

 BUG_ON(out_sgs + in_sgs > ARRAY_SIZE(sgs));
 err = virtqueue_add_sgs(chan->vq, sgs, out_sgs, in_sgs, req,
    GFP_ATOMIC);
 if (err < 0) {
  if (err == -ENOSPC) {
   chan->ring_bufs_avail = 0;
   spin_unlock_irqrestore(&chan->lock, flags);
   err = wait_event_killable(*chan->vc_wq,
        chan->ring_bufs_avail);
   if (err == -ERESTARTSYS)
    goto err_out;

   p9_debug(P9_DEBUG_TRANS, "Retry virtio request\n");
   goto req_retry_pinned;
  } else {
   spin_unlock_irqrestore(&chan->lock, flags);
   p9_debug(P9_DEBUG_TRANS,
     "virtio rpc add_sgs returned failure\n");
   err = -EIO;
   goto err_out;
  }
 }
 virtqueue_kick(chan->vq);
 spin_unlock_irqrestore(&chan->lock, flags);
 kicked = 1;
 p9_debug(P9_DEBUG_TRANS, "virtio request kicked\n");
 err = wait_event_killable(req->wq, req->status >= REQ_STATUS_RCVD);



err_out:
 if (need_drop) {
  if (in_pages) {
   p9_release_pages(in_pages, in_nr_pages);
   atomic_sub(in_nr_pages, &vp_pinned);
  }
  if (out_pages) {
   p9_release_pages(out_pages, out_nr_pages);
   atomic_sub(out_nr_pages, &vp_pinned);
  }

  wake_up(&vp_wq);
 }
 kvfree(in_pages);
 kvfree(out_pages);
 if (!kicked) {

  p9_req_put(req);
 }
 return err;
}
