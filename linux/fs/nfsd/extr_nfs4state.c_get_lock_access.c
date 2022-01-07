
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct nfs4_file* sc_file; } ;
struct nfs4_ol_stateid {TYPE_1__ st_stid; } ;
struct nfs4_file {int fi_lock; } ;


 int __nfs4_file_get_access (struct nfs4_file*,int ) ;
 int lockdep_assert_held (int *) ;
 int set_access (int ,struct nfs4_ol_stateid*) ;
 scalar_t__ test_access (int ,struct nfs4_ol_stateid*) ;

__attribute__((used)) static void get_lock_access(struct nfs4_ol_stateid *lock_stp, u32 access)
{
 struct nfs4_file *fp = lock_stp->st_stid.sc_file;

 lockdep_assert_held(&fp->fi_lock);

 if (test_access(access, lock_stp))
  return;
 __nfs4_file_get_access(fp, access);
 set_access(access, lock_stp);
}
