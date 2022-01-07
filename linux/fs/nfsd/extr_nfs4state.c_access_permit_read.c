
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_ol_stateid {int dummy; } ;


 int NFS4_SHARE_ACCESS_BOTH ;
 int NFS4_SHARE_ACCESS_READ ;
 int NFS4_SHARE_ACCESS_WRITE ;
 scalar_t__ test_access (int ,struct nfs4_ol_stateid*) ;

__attribute__((used)) static inline int
access_permit_read(struct nfs4_ol_stateid *stp)
{
 return test_access(NFS4_SHARE_ACCESS_READ, stp) ||
  test_access(NFS4_SHARE_ACCESS_BOTH, stp) ||
  test_access(NFS4_SHARE_ACCESS_WRITE, stp);
}
