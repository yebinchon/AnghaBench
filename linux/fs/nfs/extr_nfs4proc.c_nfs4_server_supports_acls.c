
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int caps; } ;


 int NFS_CAP_ACLS ;

__attribute__((used)) static inline int nfs4_server_supports_acls(struct nfs_server *server)
{
 return server->caps & NFS_CAP_ACLS;
}
