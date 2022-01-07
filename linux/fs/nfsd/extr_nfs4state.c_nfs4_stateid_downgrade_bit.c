
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int sc_file; } ;
struct nfs4_ol_stateid {TYPE_1__ st_stid; } ;


 int clear_access (int ,struct nfs4_ol_stateid*) ;
 int nfs4_file_put_access (int ,int ) ;
 int test_access (int ,struct nfs4_ol_stateid*) ;

__attribute__((used)) static inline void nfs4_stateid_downgrade_bit(struct nfs4_ol_stateid *stp, u32 access)
{
 if (!test_access(access, stp))
  return;
 nfs4_file_put_access(stp->st_stid.sc_file, access);
 clear_access(access, stp);
}
