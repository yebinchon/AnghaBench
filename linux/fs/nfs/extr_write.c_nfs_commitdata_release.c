
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_commit_data {int context; } ;


 int nfs_commit_free (struct nfs_commit_data*) ;
 int put_nfs_open_context (int ) ;

void nfs_commitdata_release(struct nfs_commit_data *data)
{
 put_nfs_open_context(data->context);
 nfs_commit_free(data);
}
