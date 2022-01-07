
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_session {int dummy; } ;
struct nfs4_sessionid {int dummy; } ;
struct net {int dummy; } ;
typedef scalar_t__ __be32 ;


 struct nfsd4_session* __find_in_sessionid_hashtbl (struct nfs4_sessionid*,struct net*) ;
 scalar_t__ nfsd4_get_session_locked (struct nfsd4_session*) ;
 scalar_t__ nfserr_badsession ;

__attribute__((used)) static struct nfsd4_session *
find_in_sessionid_hashtbl(struct nfs4_sessionid *sessionid, struct net *net,
  __be32 *ret)
{
 struct nfsd4_session *session;
 __be32 status = nfserr_badsession;

 session = __find_in_sessionid_hashtbl(sessionid, net);
 if (!session)
  goto out;
 status = nfsd4_get_session_locked(session);
 if (status)
  session = ((void*)0);
out:
 *ret = status;
 return session;
}
