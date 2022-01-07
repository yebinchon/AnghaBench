
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd4_compound_state {TYPE_1__* session; } ;
struct nfs4_sessionid {int dummy; } ;
struct TYPE_2__ {int se_sessionid; } ;


 int memcmp (struct nfs4_sessionid*,int *,int) ;

__attribute__((used)) static bool nfsd4_compound_in_session(struct nfsd4_compound_state *cstate, struct nfs4_sessionid *sid)
{
 if (!cstate->session)
  return 0;
 return !memcmp(sid, &cstate->session->se_sessionid, sizeof(*sid));
}
