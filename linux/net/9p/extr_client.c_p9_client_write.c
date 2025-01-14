
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct p9_req_t {int rc; } ;
struct p9_fid {int iounit; int fid; struct p9_client* clnt; } ;
struct p9_client {int msize; int proto_version; TYPE_1__* trans_mod; } ;
struct iov_iter {int dummy; } ;
struct TYPE_2__ {scalar_t__ zc_request; } ;


 scalar_t__ IS_ERR (struct p9_req_t*) ;
 int P9_DEBUG_9P ;
 int P9_IOHDRSZ ;
 int P9_TWRITE ;
 int P9_ZC_HDR_SZ ;
 int PTR_ERR (struct p9_req_t*) ;
 int iov_iter_advance (struct iov_iter*,int) ;
 int iov_iter_count (struct iov_iter*) ;
 struct p9_req_t* p9_client_rpc (struct p9_client*,int ,char*,int ,scalar_t__,int,struct iov_iter*) ;
 struct p9_req_t* p9_client_zc_rpc (struct p9_client*,int ,int *,struct iov_iter*,int ,int,int ,char*,int ,scalar_t__,int) ;
 int p9_debug (int ,char*,int,...) ;
 int p9_tag_remove (struct p9_client*,struct p9_req_t*) ;
 int p9pdu_readf (int *,int ,char*,int*) ;
 int pr_err (char*,int,int) ;
 int trace_9p_protocol_dump (struct p9_client*,int *) ;

int
p9_client_write(struct p9_fid *fid, u64 offset, struct iov_iter *from, int *err)
{
 struct p9_client *clnt = fid->clnt;
 struct p9_req_t *req;
 int total = 0;
 *err = 0;

 p9_debug(P9_DEBUG_9P, ">>> TWRITE fid %d offset %llu count %zd\n",
    fid->fid, (unsigned long long) offset,
    iov_iter_count(from));

 while (iov_iter_count(from)) {
  int count = iov_iter_count(from);
  int rsize = fid->iounit;
  if (!rsize || rsize > clnt->msize-P9_IOHDRSZ)
   rsize = clnt->msize - P9_IOHDRSZ;

  if (count < rsize)
   rsize = count;


  if (clnt->trans_mod->zc_request && rsize > 1024) {
   req = p9_client_zc_rpc(clnt, P9_TWRITE, ((void*)0), from, 0,
            rsize, P9_ZC_HDR_SZ, "dqd",
            fid->fid, offset, rsize);
  } else {
   req = p9_client_rpc(clnt, P9_TWRITE, "dqV", fid->fid,
          offset, rsize, from);
  }
  if (IS_ERR(req)) {
   *err = PTR_ERR(req);
   break;
  }

  *err = p9pdu_readf(&req->rc, clnt->proto_version, "d", &count);
  if (*err) {
   trace_9p_protocol_dump(clnt, &req->rc);
   p9_tag_remove(clnt, req);
   break;
  }
  if (rsize < count) {
   pr_err("bogus RWRITE count (%d > %d)\n", count, rsize);
   count = rsize;
  }

  p9_debug(P9_DEBUG_9P, "<<< RWRITE count %d\n", count);

  p9_tag_remove(clnt, req);
  iov_iter_advance(from, count);
  total += count;
  offset += count;
 }
 return total;
}
