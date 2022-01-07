
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fuse_out_header {size_t len; int unique; int error; } ;
struct TYPE_3__ {struct fuse_out_header h; } ;
struct fuse_req {int list; int flags; TYPE_1__ out; TYPE_2__* args; } ;
struct fuse_pqueue {int lock; scalar_t__ connected; int io; } ;
struct fuse_dev {struct fuse_pqueue pq; struct fuse_conn* fc; } ;
struct fuse_copy_state {scalar_t__ move_pages; struct fuse_req* req; } ;
struct fuse_conn {int no_interrupt; int iq; } ;
typedef int ssize_t ;
typedef int oh ;
struct TYPE_4__ {int page_replace; } ;


 int EAGAIN ;
 int EINVAL ;
 int EIO ;
 int ENOENT ;
 int ENOSYS ;
 int FR_LOCKED ;
 int FR_PRIVATE ;
 int FR_SENT ;
 int FUSE_INT_REQ_BIT ;
 int __fuse_get_request (struct fuse_req*) ;
 int clear_bit (int ,int *) ;
 int copy_out_args (struct fuse_copy_state*,TYPE_2__*,size_t) ;
 int fuse_copy_finish (struct fuse_copy_state*) ;
 int fuse_copy_one (struct fuse_copy_state*,struct fuse_out_header*,int) ;
 int fuse_notify (struct fuse_conn*,int,size_t,struct fuse_copy_state*) ;
 int fuse_put_request (struct fuse_conn*,struct fuse_req*) ;
 int fuse_request_end (struct fuse_conn*,struct fuse_req*) ;
 int list_del_init (int *) ;
 int list_move (int *,int *) ;
 int queue_interrupt (int *,struct fuse_req*) ;
 struct fuse_req* request_find (struct fuse_pqueue*,int) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static ssize_t fuse_dev_do_write(struct fuse_dev *fud,
     struct fuse_copy_state *cs, size_t nbytes)
{
 int err;
 struct fuse_conn *fc = fud->fc;
 struct fuse_pqueue *fpq = &fud->pq;
 struct fuse_req *req;
 struct fuse_out_header oh;

 err = -EINVAL;
 if (nbytes < sizeof(struct fuse_out_header))
  goto out;

 err = fuse_copy_one(cs, &oh, sizeof(oh));
 if (err)
  goto copy_finish;

 err = -EINVAL;
 if (oh.len != nbytes)
  goto copy_finish;





 if (!oh.unique) {
  err = fuse_notify(fc, oh.error, nbytes - sizeof(oh), cs);
  goto out;
 }

 err = -EINVAL;
 if (oh.error <= -1000 || oh.error > 0)
  goto copy_finish;

 spin_lock(&fpq->lock);
 req = ((void*)0);
 if (fpq->connected)
  req = request_find(fpq, oh.unique & ~FUSE_INT_REQ_BIT);

 err = -ENOENT;
 if (!req) {
  spin_unlock(&fpq->lock);
  goto copy_finish;
 }


 if (oh.unique & FUSE_INT_REQ_BIT) {
  __fuse_get_request(req);
  spin_unlock(&fpq->lock);

  err = 0;
  if (nbytes != sizeof(struct fuse_out_header))
   err = -EINVAL;
  else if (oh.error == -ENOSYS)
   fc->no_interrupt = 1;
  else if (oh.error == -EAGAIN)
   err = queue_interrupt(&fc->iq, req);

  fuse_put_request(fc, req);

  goto copy_finish;
 }

 clear_bit(FR_SENT, &req->flags);
 list_move(&req->list, &fpq->io);
 req->out.h = oh;
 set_bit(FR_LOCKED, &req->flags);
 spin_unlock(&fpq->lock);
 cs->req = req;
 if (!req->args->page_replace)
  cs->move_pages = 0;

 if (oh.error)
  err = nbytes != sizeof(oh) ? -EINVAL : 0;
 else
  err = copy_out_args(cs, req->args, nbytes);
 fuse_copy_finish(cs);

 spin_lock(&fpq->lock);
 clear_bit(FR_LOCKED, &req->flags);
 if (!fpq->connected)
  err = -ENOENT;
 else if (err)
  req->out.h.error = -EIO;
 if (!test_bit(FR_PRIVATE, &req->flags))
  list_del_init(&req->list);
 spin_unlock(&fpq->lock);

 fuse_request_end(fc, req);
out:
 return err ? err : nbytes;

copy_finish:
 fuse_copy_finish(cs);
 goto out;
}
