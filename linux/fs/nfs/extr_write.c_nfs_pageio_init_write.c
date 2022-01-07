
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_server {int wsize; TYPE_1__* pnfs_curr_ld; } ;
struct nfs_pgio_completion_ops {int dummy; } ;
struct nfs_pageio_ops {int dummy; } ;
struct nfs_pageio_descriptor {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct nfs_pageio_ops* pg_write_ops; } ;


 struct nfs_server* NFS_SERVER (struct inode*) ;
 int nfs_pageio_init (struct nfs_pageio_descriptor*,struct inode*,struct nfs_pageio_ops const*,struct nfs_pgio_completion_ops const*,int *,int ,int) ;
 struct nfs_pageio_ops nfs_pgio_rw_ops ;
 int nfs_rw_write_ops ;

void nfs_pageio_init_write(struct nfs_pageio_descriptor *pgio,
          struct inode *inode, int ioflags, bool force_mds,
          const struct nfs_pgio_completion_ops *compl_ops)
{
 struct nfs_server *server = NFS_SERVER(inode);
 const struct nfs_pageio_ops *pg_ops = &nfs_pgio_rw_ops;





 nfs_pageio_init(pgio, inode, pg_ops, compl_ops, &nfs_rw_write_ops,
   server->wsize, ioflags);
}
