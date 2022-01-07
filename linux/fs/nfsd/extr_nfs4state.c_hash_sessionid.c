
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_sessionid {int sequence; } ;
struct nfs4_sessionid {int dummy; } ;


 int SESSION_HASH_SIZE ;

__attribute__((used)) static inline int
hash_sessionid(struct nfs4_sessionid *sessionid)
{
 struct nfsd4_sessionid *sid = (struct nfsd4_sessionid *)sessionid;

 return sid->sequence % SESSION_HASH_SIZE;
}
