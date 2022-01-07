
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_pgio_mirror {int pg_bsize; } ;
struct nfs_pageio_descriptor {int pg_inode; struct nfs_pgio_mirror* pg_mirrors; TYPE_1__* pg_ops; } ;
struct TYPE_4__ {int wsize; } ;
struct TYPE_3__ {int (* pg_cleanup ) (struct nfs_pageio_descriptor*) ;} ;


 TYPE_2__* NFS_SERVER (int ) ;
 int nfs_pageio_stop_mirroring (struct nfs_pageio_descriptor*) ;
 TYPE_1__ nfs_pgio_rw_ops ;
 int stub1 (struct nfs_pageio_descriptor*) ;

void nfs_pageio_reset_write_mds(struct nfs_pageio_descriptor *pgio)
{
 struct nfs_pgio_mirror *mirror;

 if (pgio->pg_ops && pgio->pg_ops->pg_cleanup)
  pgio->pg_ops->pg_cleanup(pgio);

 pgio->pg_ops = &nfs_pgio_rw_ops;

 nfs_pageio_stop_mirroring(pgio);

 mirror = &pgio->pg_mirrors[0];
 mirror->pg_bsize = NFS_SERVER(pgio->pg_inode)->wsize;
}
