
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int dummy; } ;
struct cred {int dummy; } ;
typedef int nfs4_stateid ;


 int NFS4ERR_BAD_STATEID ;

__attribute__((used)) static int nfs40_test_and_free_expired_stateid(struct nfs_server *server,
  nfs4_stateid *stateid,
  const struct cred *cred)
{
 return -NFS4ERR_BAD_STATEID;
}
