
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct p9_req_t {int rc; } ;
struct p9_fid {int iounit; int fid; struct p9_client* clnt; } ;
struct p9_client {int msize; int proto_version; TYPE_1__* trans_mod; } ;
struct iov_iter {int dummy; } ;
struct TYPE_2__ {scalar_t__ zc_request; } ;


 int EFAULT ;
 scalar_t__ IS_ERR (struct p9_req_t*) ;
 int P9_DEBUG_9P ;
 int P9_IOHDRSZ ;
 int P9_TREAD ;
 int PTR_ERR (struct p9_req_t*) ;
 int copy_to_iter (char*,int,struct iov_iter*) ;
 int iov_iter_advance (struct iov_iter*,int) ;
 int iov_iter_count (struct iov_iter*) ;
 struct p9_req_t* p9_client_rpc (struct p9_client*,int ,char*,int ,int,int) ;
 struct p9_req_t* p9_client_zc_rpc (struct p9_client*,int ,struct iov_iter*,int *,int,int ,int,char*,int ,int,int) ;
 int p9_debug (int ,char*,int,...) ;
 int p9_tag_remove (struct p9_client*,struct p9_req_t*) ;
 int p9pdu_readf (int *,int ,char*,int*,char**) ;
 int pr_err (char*,int,int) ;
 int trace_9p_protocol_dump (struct p9_client*,int *) ;

int
p9_client_read(struct p9_fid *fid, u64 offset, struct iov_iter *to, int *err)
{
 struct p9_client *clnt = fid->clnt;
 struct p9_req_t *req;
 int total = 0;
 *err = 0;

 p9_debug(P9_DEBUG_9P, ">>> TREAD fid %d offset %llu %d\n",
     fid->fid, (unsigned long long) offset, (int)iov_iter_count(to));

 while (iov_iter_count(to)) {
  int count = iov_iter_count(to);
  int rsize, non_zc = 0;
  char *dataptr;

  rsize = fid->iounit;
  if (!rsize || rsize > clnt->msize-P9_IOHDRSZ)
   rsize = clnt->msize - P9_IOHDRSZ;

  if (count < rsize)
   rsize = count;


  if (clnt->trans_mod->zc_request && rsize > 1024) {




   req = p9_client_zc_rpc(clnt, P9_TREAD, to, ((void*)0), rsize,
            0, 11, "dqd", fid->fid,
            offset, rsize);
  } else {
   non_zc = 1;
   req = p9_client_rpc(clnt, P9_TREAD, "dqd", fid->fid, offset,
         rsize);
  }
  if (IS_ERR(req)) {
   *err = PTR_ERR(req);
   break;
  }

  *err = p9pdu_readf(&req->rc, clnt->proto_version,
       "D", &count, &dataptr);
  if (*err) {
   trace_9p_protocol_dump(clnt, &req->rc);
   p9_tag_remove(clnt, req);
   break;
  }
  if (rsize < count) {
   pr_err("bogus RREAD count (%d > %d)\n", count, rsize);
   count = rsize;
  }

  p9_debug(P9_DEBUG_9P, "<<< RREAD count %d\n", count);
  if (!count) {
   p9_tag_remove(clnt, req);
   break;
  }

  if (non_zc) {
   int n = copy_to_iter(dataptr, count, to);
   total += n;
   offset += n;
   if (n != count) {
    *err = -EFAULT;
    p9_tag_remove(clnt, req);
    break;
   }
  } else {
   iov_iter_advance(to, count);
   total += count;
   offset += count;
  }
  p9_tag_remove(clnt, req);
 }
 return total;
}
