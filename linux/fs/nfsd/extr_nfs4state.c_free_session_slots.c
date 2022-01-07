
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int maxreqs; } ;
struct nfsd4_session {TYPE_2__** se_slots; TYPE_1__ se_fchannel; } ;
struct TYPE_4__ {int sl_cred; } ;


 int free_svc_cred (int *) ;
 int kfree (TYPE_2__*) ;

__attribute__((used)) static void
free_session_slots(struct nfsd4_session *ses)
{
 int i;

 for (i = 0; i < ses->se_fchannel.maxreqs; i++) {
  free_svc_cred(&ses->se_slots[i]->sl_cred);
  kfree(ses->se_slots[i]);
 }
}
