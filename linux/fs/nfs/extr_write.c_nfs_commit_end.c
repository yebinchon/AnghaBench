
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_mds_commit_info {int rpcs_out; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int wake_up_var (int *) ;

__attribute__((used)) static void nfs_commit_end(struct nfs_mds_commit_info *cinfo)
{
 if (atomic_dec_and_test(&cinfo->rpcs_out))
  wake_up_var(&cinfo->rpcs_out);
}
