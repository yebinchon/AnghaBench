
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_commit_info {TYPE_1__* mds; } ;
struct nfs_commit_data {int context; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int rpcs_out; } ;


 int WARN_ON_ONCE (int ) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ list_empty (struct list_head*) ;
 int nfs_commit_free (struct nfs_commit_data*) ;
 int wake_up_var (int *) ;

__attribute__((used)) static bool
pnfs_generic_commit_cancel_empty_pagelist(struct list_head *pages,
       struct nfs_commit_data *data,
       struct nfs_commit_info *cinfo)
{
 if (list_empty(pages)) {
  if (atomic_dec_and_test(&cinfo->mds->rpcs_out))
   wake_up_var(&cinfo->mds->rpcs_out);



  WARN_ON_ONCE(data->context);
  nfs_commit_free(data);
  return 1;
 }

 return 0;
}
