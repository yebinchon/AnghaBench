
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nfs4_file* sc_file; } ;
struct nfs4_ol_stateid {scalar_t__ st_deny_bmap; TYPE_1__ st_stid; } ;
struct nfs4_file {int dummy; } ;


 int clear_access (int,struct nfs4_ol_stateid*) ;
 int nfs4_file_put_access (struct nfs4_file*,int) ;
 int recalculate_deny_mode (struct nfs4_file*) ;
 scalar_t__ test_access (int,struct nfs4_ol_stateid*) ;

__attribute__((used)) static void
release_all_access(struct nfs4_ol_stateid *stp)
{
 int i;
 struct nfs4_file *fp = stp->st_stid.sc_file;

 if (fp && stp->st_deny_bmap != 0)
  recalculate_deny_mode(fp);

 for (i = 1; i < 4; i++) {
  if (test_access(i, stp))
   nfs4_file_put_access(stp->st_stid.sc_file, i);
  clear_access(i, stp);
 }
}
