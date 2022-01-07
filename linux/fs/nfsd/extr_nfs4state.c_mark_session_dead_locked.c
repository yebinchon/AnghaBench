
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_session {int se_flags; int se_ref; } ;
typedef int __be32 ;


 int NFS4_SESSION_DEAD ;
 int atomic_read (int *) ;
 int nfs_ok ;
 int nfserr_jukebox ;

__attribute__((used)) static __be32 mark_session_dead_locked(struct nfsd4_session *ses, int ref_held_by_me)
{
 if (atomic_read(&ses->se_ref) > ref_held_by_me)
  return nfserr_jukebox;
 ses->se_flags |= NFS4_SESSION_DEAD;
 return nfs_ok;
}
