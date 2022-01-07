
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_mds_commit_info {int rpcs_out; } ;


 int atomic_read (int *) ;
 int wait_var_event_killable (int *,int) ;

__attribute__((used)) static int wait_on_commit(struct nfs_mds_commit_info *cinfo)
{
 return wait_var_event_killable(&cinfo->rpcs_out,
           !atomic_read(&cinfo->rpcs_out));
}
