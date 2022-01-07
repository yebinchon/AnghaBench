
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {int cl_state; } ;


 int BIT (int ) ;
 int NFS4CLNT_CHECK_LEASE ;
 int NFS4CLNT_LEASE_EXPIRED ;
 int NFS4CLNT_SESSION_RESET ;

__attribute__((used)) static inline bool nfs4_server_rebooted(const struct nfs_client *clp)
{
 return (clp->cl_state & (BIT(NFS4CLNT_CHECK_LEASE) |
    BIT(NFS4CLNT_LEASE_EXPIRED) |
    BIT(NFS4CLNT_SESSION_RESET))) != 0;
}
