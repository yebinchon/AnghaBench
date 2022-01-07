
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * verf; scalar_t__ eof; scalar_t__ count; int * fattr; } ;
struct TYPE_5__ {unsigned int count; int stable; int lock_context; int context; int pages; int pgbase; int offset; int fh; } ;
struct TYPE_4__ {int pagevec; } ;
struct nfs_pgio_header {int fattr; int verf; TYPE_3__ res; TYPE_2__ args; TYPE_1__ page_array; int mds_offset; int inode; struct nfs_page* req; } ;
struct nfs_page {int wb_lock_context; int wb_pgbase; } ;
struct nfs_commit_info {int dummy; } ;



 int FLUSH_STABLE ;
 int NFS_FH (int ) ;
 int NFS_FILE_SYNC ;
 int NFS_UNSTABLE ;
 int get_nfs_open_context (int ) ;
 int nfs_fattr_init (int *) ;
 int nfs_req_openctx (struct nfs_page*) ;
 int nfs_reqs_to_commit (struct nfs_commit_info*) ;
 int req_offset (struct nfs_page*) ;

__attribute__((used)) static void nfs_pgio_rpcsetup(struct nfs_pgio_header *hdr,
         unsigned int count,
         int how, struct nfs_commit_info *cinfo)
{
 struct nfs_page *req = hdr->req;




 hdr->args.fh = NFS_FH(hdr->inode);
 hdr->args.offset = req_offset(req);

 hdr->mds_offset = hdr->args.offset;
 hdr->args.pgbase = req->wb_pgbase;
 hdr->args.pages = hdr->page_array.pagevec;
 hdr->args.count = count;
 hdr->args.context = get_nfs_open_context(nfs_req_openctx(req));
 hdr->args.lock_context = req->wb_lock_context;
 hdr->args.stable = NFS_UNSTABLE;
 switch (how & (FLUSH_STABLE | 128)) {
 case 0:
  break;
 case 128:
  if (nfs_reqs_to_commit(cinfo))
   break;

 default:
  hdr->args.stable = NFS_FILE_SYNC;
 }

 hdr->res.fattr = &hdr->fattr;
 hdr->res.count = 0;
 hdr->res.eof = 0;
 hdr->res.verf = &hdr->verf;
 nfs_fattr_init(&hdr->fattr);
}
