
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_commit_data {int task; } ;


 int ff_layout_commit_record_layoutstats_done (int *,struct nfs_commit_data*) ;
 int pnfs_generic_commit_release (void*) ;

__attribute__((used)) static void ff_layout_commit_release(void *data)
{
 struct nfs_commit_data *cdata = data;

 ff_layout_commit_record_layoutstats_done(&cdata->task, cdata);
 pnfs_generic_commit_release(data);
}
