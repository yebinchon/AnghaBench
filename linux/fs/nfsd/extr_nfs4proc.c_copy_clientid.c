
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int cl_id; int cl_boot; } ;
struct nfsd4_sessionid {TYPE_2__ clientid; } ;
struct TYPE_5__ {scalar_t__ data; } ;
struct nfsd4_session {TYPE_1__ se_sessionid; } ;
struct TYPE_7__ {int cl_id; int cl_boot; } ;
typedef TYPE_3__ clientid_t ;



__attribute__((used)) static void
copy_clientid(clientid_t *clid, struct nfsd4_session *session)
{
 struct nfsd4_sessionid *sid =
   (struct nfsd4_sessionid *)session->se_sessionid.data;

 clid->cl_boot = sid->clientid.cl_boot;
 clid->cl_id = sid->clientid.cl_id;
}
