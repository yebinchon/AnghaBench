
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_commit_data {TYPE_1__* completion_ops; } ;
struct TYPE_2__ {int (* completion ) (struct nfs_commit_data*) ;} ;


 int nfs_commitdata_release (void*) ;
 int stub1 (struct nfs_commit_data*) ;

__attribute__((used)) static void nfs_commit_release(void *calldata)
{
 struct nfs_commit_data *data = calldata;

 data->completion_ops->completion(data);
 nfs_commitdata_release(calldata);
}
