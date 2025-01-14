
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_serv {struct svc_program* sv_program; } ;
struct svc_program {unsigned int pg_nvers; TYPE_1__** pg_vers; struct svc_program* pg_next; } ;
struct TYPE_2__ {int vs_hidden; } ;



__attribute__((used)) static int svc_uses_rpcbind(struct svc_serv *serv)
{
 struct svc_program *progp;
 unsigned int i;

 for (progp = serv->sv_program; progp; progp = progp->pg_next) {
  for (i = 0; i < progp->pg_nvers; i++) {
   if (progp->pg_vers[i] == ((void*)0))
    continue;
   if (!progp->pg_vers[i]->vs_hidden)
    return 1;
  }
 }

 return 0;
}
