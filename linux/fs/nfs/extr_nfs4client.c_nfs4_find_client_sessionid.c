
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sockaddr {int dummy; } ;
struct nfs_client {int dummy; } ;
struct nfs4_sessionid {int dummy; } ;
struct net {int dummy; } ;



struct nfs_client *
nfs4_find_client_sessionid(struct net *net, const struct sockaddr *addr,
      struct nfs4_sessionid *sid, u32 minorversion)
{
 return ((void*)0);
}
