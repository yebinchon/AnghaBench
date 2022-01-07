
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_mds_commit_info {int rpcs_out; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static void nfs_commit_begin(struct nfs_mds_commit_info *cinfo)
{
 atomic_inc(&cinfo->rpcs_out);
}
