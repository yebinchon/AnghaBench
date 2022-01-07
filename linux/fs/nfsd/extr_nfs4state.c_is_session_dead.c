
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_session {int se_flags; } ;


 int NFS4_SESSION_DEAD ;

__attribute__((used)) static bool is_session_dead(struct nfsd4_session *ses)
{
 return ses->se_flags & NFS4_SESSION_DEAD;
}
