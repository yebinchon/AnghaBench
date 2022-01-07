
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pnfs_layout_segment {int dummy; } ;
struct nfs_page {int dummy; } ;
struct nfs_open_context {int cred; int dentry; } ;
struct nfs_commit_info {int dreq; int completion_ops; } ;
struct TYPE_4__ {int * verf; int * fattr; } ;
struct TYPE_3__ {scalar_t__ count; scalar_t__ offset; int fh; } ;
struct nfs_commit_data {int fattr; int verf; TYPE_2__ res; int context; TYPE_1__ args; struct inode* inode; int dreq; int completion_ops; int * mds_ops; int pages; int lwb; struct pnfs_layout_segment* lseg; int cred; } ;
struct list_head {int next; } ;
struct inode {int dummy; } ;


 int NFS_FH (struct inode*) ;
 struct inode* d_inode (int ) ;
 int get_nfs_open_context (struct nfs_open_context*) ;
 int list_splice_init (struct list_head*,int *) ;
 int nfs_commit_ops ;
 int nfs_fattr_init (int *) ;
 int nfs_get_lwb (int *) ;
 struct nfs_page* nfs_list_entry (int ) ;
 struct nfs_open_context* nfs_req_openctx (struct nfs_page*) ;

void nfs_init_commit(struct nfs_commit_data *data,
       struct list_head *head,
       struct pnfs_layout_segment *lseg,
       struct nfs_commit_info *cinfo)
{
 struct nfs_page *first = nfs_list_entry(head->next);
 struct nfs_open_context *ctx = nfs_req_openctx(first);
 struct inode *inode = d_inode(ctx->dentry);




 list_splice_init(head, &data->pages);

 data->inode = inode;
 data->cred = ctx->cred;
 data->lseg = lseg;

 if (lseg)
  data->lwb = nfs_get_lwb(&data->pages);
 data->mds_ops = &nfs_commit_ops;
 data->completion_ops = cinfo->completion_ops;
 data->dreq = cinfo->dreq;

 data->args.fh = NFS_FH(data->inode);

 data->args.offset = 0;
 data->args.count = 0;
 data->context = get_nfs_open_context(ctx);
 data->res.fattr = &data->fattr;
 data->res.verf = &data->verf;
 nfs_fattr_init(&data->fattr);
}
