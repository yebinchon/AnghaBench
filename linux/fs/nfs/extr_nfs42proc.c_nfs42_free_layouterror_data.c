
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs42_layouterror_data {int inode; int lseg; } ;


 int kfree (struct nfs42_layouterror_data*) ;
 int nfs_iput_and_deactive (int ) ;
 int pnfs_put_lseg (int ) ;

__attribute__((used)) static void
nfs42_free_layouterror_data(struct nfs42_layouterror_data *data)
{
 pnfs_put_lseg(data->lseg);
 nfs_iput_and_deactive(data->inode);
 kfree(data);
}
