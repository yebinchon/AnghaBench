
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd4_sessionid {scalar_t__ reserved; scalar_t__ sequence; int clientid; } ;
struct TYPE_2__ {scalar_t__ data; } ;
struct nfsd4_session {TYPE_1__ se_sessionid; struct nfs4_client* se_client; } ;
struct nfs4_client {int cl_clientid; } ;


 int current_sessionid ;

__attribute__((used)) static void
gen_sessionid(struct nfsd4_session *ses)
{
 struct nfs4_client *clp = ses->se_client;
 struct nfsd4_sessionid *sid;

 sid = (struct nfsd4_sessionid *)ses->se_sessionid.data;
 sid->clientid = clp->cl_clientid;
 sid->sequence = current_sessionid++;
 sid->reserved = 0;
}
