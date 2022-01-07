
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_session {int se_ref; int se_client; } ;
typedef scalar_t__ __be32 ;


 int atomic_inc (int *) ;
 scalar_t__ get_client_locked (int ) ;
 scalar_t__ is_session_dead (struct nfsd4_session*) ;
 scalar_t__ nfs_ok ;
 scalar_t__ nfserr_badsession ;

__attribute__((used)) static __be32 nfsd4_get_session_locked(struct nfsd4_session *ses)
{
 __be32 status;

 if (is_session_dead(ses))
  return nfserr_badsession;
 status = get_client_locked(ses->se_client);
 if (status)
  return status;
 atomic_inc(&ses->se_ref);
 return nfs_ok;
}
